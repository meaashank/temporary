package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListenerCallbackExecutor;
import com.amazonaws.event.ProgressListenerChain;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.mobileconnectors.s3.transfermanager.PersistableUpload;
import com.amazonaws.mobileconnectors.s3.transfermanager.Transfer;
import com.amazonaws.mobileconnectors.s3.transfermanager.TransferManager;
import com.amazonaws.mobileconnectors.s3.transfermanager.TransferManagerConfiguration;
import com.amazonaws.mobileconnectors.s3.transfermanager.TransferProgress;
import com.amazonaws.mobileconnectors.s3.transfermanager.model.UploadResult;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.AmazonS3EncryptionClient;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.s3.model.EncryptedInitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.EncryptedPutObjectRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.ListPartsRequest;
import com.amazonaws.services.s3.model.PartETag;
import com.amazonaws.services.s3.model.PartListing;
import com.amazonaws.services.s3.model.PartSummary;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.PutObjectResult;
import com.amazonaws.services.s3.model.StorageClass;
import com.amazonaws.services.s3.model.UploadPartRequest;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public class UploadCallable implements Callable<UploadResult> {
    private static final Log f = LogFactory.a(UploadCallable.class);
    private final AmazonS3 a;
    private final ExecutorService b;
    private final PutObjectRequest c;
    private String d;
    private final UploadImpl e;
    private final TransferManagerConfiguration g;
    private final ProgressListenerChain i;
    private final TransferProgress j;
    private PersistableUpload l;
    private final List<Future<PartETag>> h = new ArrayList();
    private final List<PartETag> k = new ArrayList();

    public UploadCallable(TransferManager transferManager, ExecutorService executorService, UploadImpl uploadImpl, PutObjectRequest putObjectRequest, ProgressListenerChain progressListenerChain, String str, TransferProgress transferProgress) {
        this.a = transferManager.b();
        this.g = transferManager.a();
        this.b = executorService;
        this.c = putObjectRequest;
        this.i = progressListenerChain;
        this.e = uploadImpl;
        this.d = str;
        this.j = transferProgress;
    }

    List<Future<PartETag>> a() {
        return this.h;
    }

    List<PartETag> b() {
        return this.k;
    }

    String c() {
        return this.d;
    }

    public boolean d() {
        return TransferManagerUtils.b(this.c, this.g);
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public UploadResult call() {
        this.e.a(Transfer.TransferState.InProgress);
        if (d()) {
            a(2);
            return k();
        }
        return h();
    }

    private UploadResult h() {
        PutObjectResult putObjectResultA = this.a.a(this.c);
        UploadResult uploadResult = new UploadResult();
        uploadResult.a(this.c.h());
        uploadResult.b(this.c.i());
        uploadResult.c(putObjectResultA.i());
        uploadResult.d(putObjectResultA.d());
        return uploadResult;
    }

    private void i() {
        if (this.c.q() == null) {
            this.l = new PersistableUpload(this.c.h(), this.c.i(), this.c.k().getAbsolutePath(), this.d, this.g.a(), this.g.b());
            j();
        }
    }

    public PersistableUpload f() {
        return this.l;
    }

    private void j() {
        S3ProgressPublisher.a(this.i, this.l);
    }

    private UploadResult k() {
        boolean z = this.a instanceof AmazonS3EncryptionClient;
        long jA = a(z);
        if (this.d == null) {
            this.d = a(this.c, z);
        }
        try {
            try {
                UploadPartRequestFactory uploadPartRequestFactory = new UploadPartRequestFactory(this.c, this.d, jA);
                if (TransferManagerUtils.a(this.c, z)) {
                    i();
                    a(uploadPartRequestFactory, this.d);
                    return null;
                }
                UploadResult uploadResultA = a(uploadPartRequestFactory);
                if (this.c.o() != null) {
                    try {
                        this.c.o().close();
                    } catch (Exception e) {
                        f.d("Unable to cleanly close input stream: " + e.getMessage(), e);
                    }
                }
                return uploadResultA;
            } catch (Exception e2) {
                a(8);
                g();
                throw e2;
            }
        } finally {
            if (this.c.o() != null) {
                try {
                    this.c.o().close();
                } catch (Exception e3) {
                    f.d("Unable to cleanly close input stream: " + e3.getMessage(), e3);
                }
            }
        }
    }

    void g() {
        try {
            if (this.d != null) {
                this.a.a(new AbortMultipartUploadRequest(this.c.h(), this.c.i(), this.d));
            }
        } catch (Exception e) {
            f.c("Unable to abort multipart upload, you may need to manually remove uploaded parts: " + e.getMessage(), e);
        }
    }

    private long a(boolean z) {
        long jA = TransferManagerUtils.a(this.c, this.g);
        if (z) {
            long j = jA % 32;
            if (j > 0) {
                jA = (jA - j) + 32;
            }
        }
        f.b("Calculated optimal part size: " + jA);
        return jA;
    }

    private UploadResult a(UploadPartRequestFactory uploadPartRequestFactory) {
        ArrayList arrayList = new ArrayList();
        while (uploadPartRequestFactory.a()) {
            if (this.b.isShutdown()) {
                throw new CancellationException("TransferManager has been shutdown");
            }
            UploadPartRequest uploadPartRequestB = uploadPartRequestFactory.b();
            InputStream inputStreamO = uploadPartRequestB.o();
            if (inputStreamO != null && inputStreamO.markSupported()) {
                if (uploadPartRequestB.p() >= 2147483647L) {
                    inputStreamO.mark(Integer.MAX_VALUE);
                } else {
                    inputStreamO.mark((int) uploadPartRequestB.p());
                }
            }
            arrayList.add(this.a.a(uploadPartRequestB).d());
        }
        CompleteMultipartUploadResult completeMultipartUploadResultA = this.a.a(new CompleteMultipartUploadRequest(this.c.h(), this.c.i(), this.d, arrayList));
        UploadResult uploadResult = new UploadResult();
        uploadResult.a(completeMultipartUploadResultA.i());
        uploadResult.b(completeMultipartUploadResultA.j());
        uploadResult.c(completeMultipartUploadResultA.k());
        uploadResult.d(completeMultipartUploadResultA.l());
        return uploadResult;
    }

    private void a(UploadPartRequestFactory uploadPartRequestFactory, String str) {
        Map<Integer, PartSummary> mapA = a(str);
        while (uploadPartRequestFactory.a()) {
            if (this.b.isShutdown()) {
                throw new CancellationException("TransferManager has been shutdown");
            }
            UploadPartRequest uploadPartRequestB = uploadPartRequestFactory.b();
            if (mapA.containsKey(Integer.valueOf(uploadPartRequestB.n()))) {
                PartSummary partSummary = mapA.get(Integer.valueOf(uploadPartRequestB.n()));
                this.k.add(new PartETag(uploadPartRequestB.n(), partSummary.c()));
                this.j.a(partSummary.d());
            } else {
                this.h.add(this.b.submit(new UploadPartCallable(this.a, uploadPartRequestB)));
            }
        }
    }

    private Map<Integer, PartSummary> a(String str) {
        HashMap map = new HashMap();
        if (str == null) {
            return map;
        }
        int iIntValue = 0;
        while (true) {
            PartListing partListingA = this.a.a(new ListPartsRequest(this.c.h(), this.c.i(), str).b(Integer.valueOf(iIntValue)));
            for (PartSummary partSummary : partListingA.m()) {
                map.put(Integer.valueOf(partSummary.a()), partSummary);
            }
            if (!partListingA.l()) {
                return map;
            }
            iIntValue = partListingA.i().intValue();
        }
    }

    private String a(PutObjectRequest putObjectRequest, boolean z) {
        InitiateMultipartUploadRequest initiateMultipartUploadRequestB;
        if (z && (putObjectRequest instanceof EncryptedPutObjectRequest)) {
            initiateMultipartUploadRequestB = new EncryptedInitiateMultipartUploadRequest(putObjectRequest.h(), putObjectRequest.i()).b(putObjectRequest.m()).b(putObjectRequest.l());
            ((EncryptedInitiateMultipartUploadRequest) initiateMultipartUploadRequestB).a(((EncryptedPutObjectRequest) putObjectRequest).j_());
        } else {
            initiateMultipartUploadRequestB = new InitiateMultipartUploadRequest(putObjectRequest.h(), putObjectRequest.i()).b(putObjectRequest.m()).b(putObjectRequest.l());
        }
        TransferManager.b(initiateMultipartUploadRequestB);
        if (putObjectRequest.j() != null) {
            initiateMultipartUploadRequestB.a(StorageClass.fromValue(putObjectRequest.j()));
        }
        if (putObjectRequest.p() != null) {
            initiateMultipartUploadRequestB.f(putObjectRequest.p());
        }
        if (putObjectRequest.q() != null) {
            initiateMultipartUploadRequestB.a(putObjectRequest.q());
        }
        String strC = this.a.a(initiateMultipartUploadRequestB).c();
        f.b("Initiated new multipart upload: " + strC);
        return strC;
    }

    private void a(int i) {
        ProgressEvent progressEvent = new ProgressEvent(0L);
        progressEvent.a(i);
        ProgressListenerCallbackExecutor.a(this.i, progressEvent);
    }
}
