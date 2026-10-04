package com.amazonaws.mobileconnectors.s3.transfermanager;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;
import com.amazonaws.auth.DefaultAWSCredentialsProviderChain;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.event.ProgressListenerChain;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.mobileconnectors.s3.transfermanager.Transfer;
import com.amazonaws.mobileconnectors.s3.transfermanager.internal.CopyCallable;
import com.amazonaws.mobileconnectors.s3.transfermanager.internal.CopyImpl;
import com.amazonaws.mobileconnectors.s3.transfermanager.internal.CopyMonitor;
import com.amazonaws.mobileconnectors.s3.transfermanager.internal.DownloadImpl;
import com.amazonaws.mobileconnectors.s3.transfermanager.internal.DownloadMonitor;
import com.amazonaws.mobileconnectors.s3.transfermanager.internal.MultipleFileDownloadImpl;
import com.amazonaws.mobileconnectors.s3.transfermanager.internal.MultipleFileTransferMonitor;
import com.amazonaws.mobileconnectors.s3.transfermanager.internal.MultipleFileUploadImpl;
import com.amazonaws.mobileconnectors.s3.transfermanager.internal.S3ProgressListener;
import com.amazonaws.mobileconnectors.s3.transfermanager.internal.S3ProgressListenerChain;
import com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferManagerUtils;
import com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferProgressUpdatingListener;
import com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferStateChangeListener;
import com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadCallable;
import com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadImpl;
import com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadMonitor;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3Client;
import com.amazonaws.services.s3.AmazonS3EncryptionClient;
import com.amazonaws.services.s3.internal.ServiceUtils;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.s3.model.CopyObjectRequest;
import com.amazonaws.services.s3.model.GetObjectMetadataRequest;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.ListMultipartUploadsRequest;
import com.amazonaws.services.s3.model.ListObjectsRequest;
import com.amazonaws.services.s3.model.MultipartUpload;
import com.amazonaws.services.s3.model.MultipartUploadListing;
import com.amazonaws.services.s3.model.ObjectListing;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.S3ObjectSummary;
import com.amazonaws.services.s3.util.Mimetypes;
import com.amazonaws.util.VersionInfoUtils;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Stack;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class TransferManager {
    private final AmazonS3 a;
    private TransferManagerConfiguration b;
    private final ExecutorService c;
    private final ScheduledExecutorService d;
    private static final Log e = LogFactory.a(TransferManager.class);
    private static final String h = "/";
    private static final String f = TransferManager.class.getName() + h + VersionInfoUtils.a();
    private static final String g = TransferManager.class.getName() + "_multipart/" + VersionInfoUtils.a();
    private static final ThreadFactory i = new ThreadFactory() { // from class: com.amazonaws.mobileconnectors.s3.transfermanager.TransferManager.3
        final AtomicInteger a = new AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            int iIncrementAndGet = this.a.incrementAndGet();
            Thread thread = new Thread(runnable);
            thread.setDaemon(true);
            thread.setName("S3TransferManagerTimedThread-" + iIncrementAndGet);
            return thread;
        }
    };

    public TransferManager() {
        this(new AmazonS3Client(new DefaultAWSCredentialsProviderChain()));
    }

    public TransferManager(AWSCredentialsProvider aWSCredentialsProvider) {
        this(new AmazonS3Client(aWSCredentialsProvider));
    }

    public TransferManager(AWSCredentials aWSCredentials) {
        this(new AmazonS3Client(aWSCredentials));
    }

    public TransferManager(AmazonS3 amazonS3) {
        this(amazonS3, TransferManagerUtils.a());
    }

    public TransferManager(AmazonS3 amazonS3, ExecutorService executorService) {
        this.d = new ScheduledThreadPoolExecutor(1, i);
        this.a = amazonS3;
        this.c = executorService;
        this.b = new TransferManagerConfiguration();
    }

    public void a(TransferManagerConfiguration transferManagerConfiguration) {
        this.b = transferManagerConfiguration;
    }

    public TransferManagerConfiguration a() {
        return this.b;
    }

    public AmazonS3 b() {
        return this.a;
    }

    public Upload a(String str, String str2, InputStream inputStream, ObjectMetadata objectMetadata) {
        return a(new PutObjectRequest(str, str2, inputStream, objectMetadata));
    }

    public Upload a(String str, String str2, File file) {
        return a(new PutObjectRequest(str, str2, file));
    }

    public Upload a(PutObjectRequest putObjectRequest) {
        return a(putObjectRequest, (TransferStateChangeListener) null, (S3ProgressListener) null, (PersistableUpload) null);
    }

    public Upload a(PutObjectRequest putObjectRequest, S3ProgressListener s3ProgressListener) {
        return a(putObjectRequest, (TransferStateChangeListener) null, s3ProgressListener, (PersistableUpload) null);
    }

    private Upload a(PutObjectRequest putObjectRequest, TransferStateChangeListener transferStateChangeListener, S3ProgressListener s3ProgressListener, PersistableUpload persistableUpload) {
        a(putObjectRequest);
        String strC = persistableUpload != null ? persistableUpload.c() : null;
        if (putObjectRequest.l() == null) {
            putObjectRequest.a(new ObjectMetadata());
        }
        ObjectMetadata objectMetadataL = putObjectRequest.l();
        File fileB = TransferManagerUtils.b(putObjectRequest);
        if (fileB != null) {
            objectMetadataL.a(fileB.length());
            if (objectMetadataL.m() == null) {
                objectMetadataL.f(Mimetypes.a().a(fileB));
            }
        } else if (strC != null) {
            throw new IllegalArgumentException("Unable to resume the upload. No file specified.");
        }
        String str = "Uploading to " + putObjectRequest.h() + h + putObjectRequest.i();
        TransferProgress transferProgress = new TransferProgress();
        transferProgress.b(TransferManagerUtils.a(putObjectRequest));
        S3ProgressListenerChain s3ProgressListenerChain = new S3ProgressListenerChain(new TransferProgressUpdatingListener(transferProgress), putObjectRequest.d(), s3ProgressListener);
        putObjectRequest.a(s3ProgressListenerChain);
        UploadImpl uploadImpl = new UploadImpl(str, transferProgress, s3ProgressListenerChain, transferStateChangeListener);
        UploadMonitor uploadMonitor = new UploadMonitor(this, uploadImpl, this.c, new UploadCallable(this, this.c, uploadImpl, putObjectRequest, s3ProgressListenerChain, strC, transferProgress), putObjectRequest, s3ProgressListenerChain);
        uploadMonitor.a(this.d);
        uploadImpl.a(uploadMonitor);
        return uploadImpl;
    }

    public Download b(String str, String str2, File file) {
        return a(new GetObjectRequest(str, str2), file);
    }

    public Download a(GetObjectRequest getObjectRequest, File file) {
        return a(getObjectRequest, file, (TransferStateChangeListener) null, (S3ProgressListener) null, false);
    }

    public Download a(GetObjectRequest getObjectRequest, File file, S3ProgressListener s3ProgressListener) {
        return a(getObjectRequest, file, (TransferStateChangeListener) null, s3ProgressListener, false);
    }

    private Download a(GetObjectRequest getObjectRequest, File file, TransferStateChangeListener transferStateChangeListener, S3ProgressListener s3ProgressListener, boolean z) {
        long j;
        a(getObjectRequest);
        String str = "Downloading from " + getObjectRequest.k() + h + getObjectRequest.l();
        TransferProgress transferProgress = new TransferProgress();
        S3ProgressListenerChain s3ProgressListenerChain = new S3ProgressListenerChain(new TransferProgressUpdatingListener(transferProgress), getObjectRequest.d(), s3ProgressListener);
        getObjectRequest.a(new ProgressListenerChain(new ProgressListenerChain.ProgressEventFilter() { // from class: com.amazonaws.mobileconnectors.s3.transfermanager.TransferManager.1
            @Override // com.amazonaws.event.ProgressListenerChain.ProgressEventFilter
            public ProgressEvent a(ProgressEvent progressEvent) {
                if (progressEvent.b() == 4) {
                    progressEvent.a(0);
                }
                return progressEvent;
            }
        }, s3ProgressListenerChain));
        GetObjectMetadataRequest getObjectMetadataRequest = new GetObjectMetadataRequest(getObjectRequest.k(), getObjectRequest.l());
        if (getObjectRequest.q() != null) {
            getObjectMetadataRequest.a(getObjectRequest.q());
        }
        ObjectMetadata objectMetadataA = this.a.a(getObjectMetadataRequest);
        DownloadImpl downloadImpl = new DownloadImpl(str, transferProgress, s3ProgressListenerChain, null, transferStateChangeListener, getObjectRequest, file);
        long jK = objectMetadataA.k() - 1;
        if (getObjectRequest.n() == null || getObjectRequest.n().length != 2) {
            j = 0;
        } else {
            j = getObjectRequest.n()[0];
            jK = getObjectRequest.n()[1];
        }
        long j2 = (jK - j) + 1;
        transferProgress.b(j2);
        if (z && file.exists()) {
            long length = file.length();
            long j3 = j + length;
            getObjectRequest.a(j3, jK);
            transferProgress.a(Math.min(length, j2));
            j2 = (jK - j3) + 1;
        }
        if (j2 < 0) {
            throw new IllegalArgumentException("Unable to determine the range for download operation.");
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        downloadImpl.a(new DownloadMonitor(downloadImpl, a(getObjectRequest, file, z, countDownLatch, downloadImpl)));
        countDownLatch.countDown();
        return downloadImpl;
    }

    private Future<?> a(final GetObjectRequest getObjectRequest, final File file, final boolean z, final CountDownLatch countDownLatch, final DownloadImpl downloadImpl) {
        return this.c.submit(new Callable<Object>() { // from class: com.amazonaws.mobileconnectors.s3.transfermanager.TransferManager.2
            @Override // java.util.concurrent.Callable
            public Object call() throws Exception {
                try {
                    countDownLatch.await();
                    downloadImpl.a(Transfer.TransferState.InProgress);
                    if (ServiceUtils.a(file, new ServiceUtils.RetryableS3DownloadTask() { // from class: com.amazonaws.mobileconnectors.s3.transfermanager.TransferManager.2.1
                        @Override // com.amazonaws.services.s3.internal.ServiceUtils.RetryableS3DownloadTask
                        public S3Object a() {
                            S3Object s3ObjectA = TransferManager.this.a.a(getObjectRequest);
                            downloadImpl.a(s3ObjectA);
                            return s3ObjectA;
                        }

                        @Override // com.amazonaws.services.s3.internal.ServiceUtils.RetryableS3DownloadTask
                        public boolean b() {
                            return (ServiceUtils.a(getObjectRequest) || (TransferManager.this.a instanceof AmazonS3EncryptionClient)) ? false : true;
                        }
                    }, z) == null) {
                        downloadImpl.a(Transfer.TransferState.Canceled);
                        downloadImpl.a(new DownloadMonitor(downloadImpl, null));
                        return downloadImpl;
                    }
                    downloadImpl.a(Transfer.TransferState.Completed);
                    return true;
                } catch (Throwable th) {
                    if (downloadImpl.j() != Transfer.TransferState.Canceled) {
                        downloadImpl.a(Transfer.TransferState.Failed);
                    }
                    if (th instanceof Exception) {
                        throw ((Exception) th);
                    }
                    throw ((Error) th);
                }
            }
        });
    }

    public MultipleFileDownload c(String str, String str2, File file) {
        if (str2 == null) {
            str2 = "";
        }
        String str3 = str2;
        LinkedList<S3ObjectSummary> linkedList = new LinkedList();
        Stack stack = new Stack();
        stack.add(str3);
        long jD = 0;
        do {
            String str4 = (String) stack.pop();
            ObjectListing objectListingA = null;
            do {
                if (objectListingA == null) {
                    objectListingA = this.a.a(new ListObjectsRequest().b(str).h(h).d(str4));
                } else {
                    objectListingA = this.a.a(objectListingA);
                }
                for (S3ObjectSummary s3ObjectSummary : objectListingA.a()) {
                    if (!s3ObjectSummary.b().equals(str4)) {
                        if (!objectListingA.b().contains(s3ObjectSummary.b() + h)) {
                            linkedList.add(s3ObjectSummary);
                            jD += s3ObjectSummary.d();
                        }
                    }
                    e.b("Skipping download for object " + s3ObjectSummary.b() + " since it is also a virtual directory");
                }
                stack.addAll(objectListingA.b());
            } while (objectListingA.i());
        } while (!stack.isEmpty());
        ProgressListenerChain progressListenerChain = new ProgressListenerChain(new ProgressListener[0]);
        TransferProgress transferProgress = new TransferProgress();
        transferProgress.b(jD);
        MultipleFileTransferProgressUpdatingListener multipleFileTransferProgressUpdatingListener = new MultipleFileTransferProgressUpdatingListener(transferProgress, progressListenerChain);
        ArrayList arrayList = new ArrayList();
        MultipleFileDownloadImpl multipleFileDownloadImpl = new MultipleFileDownloadImpl("Downloading from " + str + h + str3, transferProgress, progressListenerChain, str3, str, arrayList);
        multipleFileDownloadImpl.a(new MultipleFileTransferMonitor(multipleFileDownloadImpl, arrayList));
        CountDownLatch countDownLatch = new CountDownLatch(1);
        MultipleFileTransferStateChangeListener multipleFileTransferStateChangeListener = new MultipleFileTransferStateChangeListener(countDownLatch, multipleFileDownloadImpl);
        for (S3ObjectSummary s3ObjectSummary2 : linkedList) {
            File file2 = new File(file, s3ObjectSummary2.b());
            File parentFile = file2.getParentFile();
            if (!parentFile.exists() && !parentFile.mkdirs()) {
                throw new RuntimeException("Couldn't create parent directories for " + file2.getAbsolutePath());
            }
            arrayList.add((DownloadImpl) a(new GetObjectRequest(s3ObjectSummary2.a(), s3ObjectSummary2.b()).b(multipleFileTransferProgressUpdatingListener), file2, (TransferStateChangeListener) multipleFileTransferStateChangeListener, (S3ProgressListener) null, false));
        }
        if (arrayList.isEmpty()) {
            multipleFileDownloadImpl.a(Transfer.TransferState.Completed);
            return multipleFileDownloadImpl;
        }
        countDownLatch.countDown();
        return multipleFileDownloadImpl;
    }

    public MultipleFileUpload a(String str, String str2, File file, boolean z) {
        return a(str, str2, file, z, (ObjectMetadataProvider) null);
    }

    public MultipleFileUpload a(String str, String str2, File file, boolean z, ObjectMetadataProvider objectMetadataProvider) {
        if (file == null || !file.exists() || !file.isDirectory()) {
            throw new IllegalArgumentException("Must provide a directory to upload");
        }
        LinkedList linkedList = new LinkedList();
        a(file, linkedList, z);
        return a(str, str2, file, linkedList, objectMetadataProvider);
    }

    public MultipleFileUpload a(String str, String str2, File file, List<File> list) {
        return a(str, str2, file, list, (ObjectMetadataProvider) null);
    }

    public MultipleFileUpload a(String str, String str2, File file, List<File> list, ObjectMetadataProvider objectMetadataProvider) {
        Iterator<File> it;
        String str3 = str2;
        if (file == null || !file.exists() || !file.isDirectory()) {
            throw new IllegalArgumentException("Must provide a common base directory for uploaded files");
        }
        if (str3 == null || str2.length() == 0) {
            str3 = "";
        } else if (!str3.endsWith(h)) {
            str3 = str3 + h;
        }
        ProgressListenerChain progressListenerChain = new ProgressListenerChain(new ProgressListener[0]);
        TransferProgress transferProgress = new TransferProgress();
        MultipleFileTransferProgressUpdatingListener multipleFileTransferProgressUpdatingListener = new MultipleFileTransferProgressUpdatingListener(transferProgress, progressListenerChain);
        LinkedList linkedList = new LinkedList();
        MultipleFileUploadImpl multipleFileUploadImpl = new MultipleFileUploadImpl("Uploading etc", transferProgress, progressListenerChain, str3, str, linkedList);
        multipleFileUploadImpl.a(new MultipleFileTransferMonitor(multipleFileUploadImpl, linkedList));
        CountDownLatch countDownLatch = new CountDownLatch(1);
        MultipleFileTransferStateChangeListener multipleFileTransferStateChangeListener = new MultipleFileTransferStateChangeListener(countDownLatch, multipleFileUploadImpl);
        if (list == null || list.isEmpty()) {
            multipleFileUploadImpl.a(Transfer.TransferState.Completed);
        } else {
            int length = file.getAbsolutePath().length();
            if (!file.getAbsolutePath().endsWith(File.separator)) {
                length++;
            }
            long length2 = 0;
            Iterator<File> it2 = list.iterator();
            while (it2.hasNext()) {
                File next = it2.next();
                if (next.isFile()) {
                    length2 += next.length();
                    String strReplaceAll = next.getAbsolutePath().substring(length).replaceAll("\\\\", h);
                    ObjectMetadata objectMetadata = new ObjectMetadata();
                    if (objectMetadataProvider != null) {
                        objectMetadataProvider.a(next, objectMetadata);
                    }
                    it = it2;
                    linkedList.add((UploadImpl) a(new PutObjectRequest(str, str3 + strReplaceAll, next).b(objectMetadata).b(multipleFileTransferProgressUpdatingListener), multipleFileTransferStateChangeListener, (S3ProgressListener) null, (PersistableUpload) null));
                } else {
                    it = it2;
                }
                it2 = it;
            }
            transferProgress.b(length2);
        }
        countDownLatch.countDown();
        return multipleFileUploadImpl;
    }

    private void a(File file, List<File> list, boolean z) {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (!file2.isDirectory()) {
                    list.add(file2);
                } else if (z) {
                    a(file2, list, z);
                }
            }
        }
    }

    public void a(String str, Date date) {
        MultipartUploadListing multipartUploadListingA = this.a.a((ListMultipartUploadsRequest) a(new ListMultipartUploadsRequest(str)));
        do {
            for (MultipartUpload multipartUpload : multipartUploadListingA.i()) {
                if (multipartUpload.f().compareTo(date) < 0) {
                    this.a.a((AbortMultipartUploadRequest) a(new AbortMultipartUploadRequest(str, multipartUpload.a(), multipartUpload.b())));
                }
            }
            multipartUploadListingA = this.a.a((ListMultipartUploadsRequest) a(new ListMultipartUploadsRequest(str).f(multipartUploadListingA.e()).d(multipartUploadListingA.d())));
        } while (multipartUploadListingA.h());
    }

    public void c() {
        a(true);
    }

    public void a(boolean z) {
        this.c.shutdownNow();
        this.d.shutdownNow();
        if (z && (this.a instanceof AmazonS3Client)) {
            ((AmazonS3Client) this.a).e();
        }
    }

    private void d() {
        this.c.shutdown();
        this.d.shutdown();
    }

    public static <X extends AmazonWebServiceRequest> X a(X x) {
        x.b().b(f);
        return x;
    }

    public static <X extends AmazonWebServiceRequest> X b(X x) {
        x.b().b(g);
        return x;
    }

    public Copy a(String str, String str2, String str3, String str4) {
        return a(new CopyObjectRequest(str, str2, str3, str4));
    }

    public Copy a(CopyObjectRequest copyObjectRequest) {
        return a(copyObjectRequest, (TransferStateChangeListener) null);
    }

    public Copy a(CopyObjectRequest copyObjectRequest, TransferStateChangeListener transferStateChangeListener) {
        a(copyObjectRequest);
        a(copyObjectRequest.h(), "The source bucket name must be specified when a copy request is initiated.");
        a(copyObjectRequest.i(), "The source object key must be specified when a copy request is initiated.");
        a(copyObjectRequest.k(), "The destination bucket name must be specified when a copy request is initiated.");
        a(copyObjectRequest.l(), "The destination object key must be specified when a copy request is initiated.");
        String str = "Copying object from " + copyObjectRequest.h() + h + copyObjectRequest.i() + " to " + copyObjectRequest.k() + h + copyObjectRequest.l();
        ObjectMetadata objectMetadataA = this.a.a(new GetObjectMetadataRequest(copyObjectRequest.h(), copyObjectRequest.i()).b(copyObjectRequest.w()));
        TransferProgress transferProgress = new TransferProgress();
        transferProgress.b(objectMetadataA.k());
        ProgressListenerChain progressListenerChain = new ProgressListenerChain(new TransferProgressUpdatingListener(transferProgress));
        CopyImpl copyImpl = new CopyImpl(str, transferProgress, progressListenerChain, transferStateChangeListener);
        CopyMonitor copyMonitor = new CopyMonitor(this, copyImpl, this.c, new CopyCallable(this, this.c, copyImpl, copyObjectRequest, objectMetadataA, progressListenerChain), copyObjectRequest, progressListenerChain);
        copyMonitor.a(this.d);
        copyImpl.a(copyMonitor);
        return copyImpl;
    }

    public Upload a(PersistableUpload persistableUpload) {
        a(persistableUpload, "PauseUpload is mandatory to resume a upload.");
        this.b.a(persistableUpload.d());
        this.b.b(persistableUpload.e());
        return a(new PutObjectRequest(persistableUpload.a(), persistableUpload.b(), new File(persistableUpload.f())), (TransferStateChangeListener) null, (S3ProgressListener) null, persistableUpload);
    }

    public Download a(PersistableDownload persistableDownload) {
        a(persistableDownload, "PausedDownload is mandatory to resume a download.");
        GetObjectRequest getObjectRequest = new GetObjectRequest(persistableDownload.a(), persistableDownload.b(), persistableDownload.c());
        if (persistableDownload.d() != null && persistableDownload.d().length == 2) {
            long[] jArrD = persistableDownload.d();
            getObjectRequest.a(jArrD[0], jArrD[1]);
        }
        getObjectRequest.c(persistableDownload.f());
        getObjectRequest.a(persistableDownload.e());
        return a(getObjectRequest, new File(persistableDownload.g()), (TransferStateChangeListener) null, (S3ProgressListener) null, true);
    }

    private void a(Object obj, String str) {
        if (obj == null) {
            throw new IllegalArgumentException(str);
        }
    }

    protected void finalize() {
        d();
    }
}
