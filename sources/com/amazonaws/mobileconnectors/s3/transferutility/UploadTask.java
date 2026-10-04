package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.AmazonClientException;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.retry.RetryUtils;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.Headers;
import com.amazonaws.services.s3.model.CannedAccessControlList;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.ObjectTagging;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.SSEAwsKeyManagementParams;
import com.amazonaws.services.s3.model.Tag;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.util.Mimetypes;
import java.io.File;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
class UploadTask implements Callable<Boolean> {
    private static final String c = "&";
    private static final String d = "=";
    private static final String e = "requester";
    Map<Integer, UploadPartTaskMetadata> a = new HashMap();
    private final AmazonS3 f;
    private final TransferRecord g;
    private final TransferDBUtil h;
    private final TransferStatusUpdater i;
    private List<UploadPartRequest> j;
    private static final Log b = LogFactory.a(UploadTask.class);
    private static final Map<String, CannedAccessControlList> k = new HashMap();

    static {
        for (CannedAccessControlList cannedAccessControlList : CannedAccessControlList.values()) {
            k.put(cannedAccessControlList.toString(), cannedAccessControlList);
        }
    }

    public UploadTask(TransferRecord transferRecord, AmazonS3 amazonS3, TransferDBUtil transferDBUtil, TransferStatusUpdater transferStatusUpdater) {
        this.g = transferRecord;
        this.f = amazonS3;
        this.h = transferDBUtil;
        this.i = transferStatusUpdater;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Boolean call() {
        try {
            if (TransferNetworkLossHandler.a() != null && !TransferNetworkLossHandler.a().b()) {
                b.c("Network not connected. Setting the state to WAITING_FOR_NETWORK.");
                this.i.a(this.g.a, TransferState.WAITING_FOR_NETWORK);
                return false;
            }
        } catch (TransferUtilityException e2) {
            b.e("TransferUtilityException: [" + e2 + "]");
        }
        this.i.a(this.g.a, TransferState.IN_PROGRESS);
        if (this.g.d == 1 && this.g.g == 0) {
            return c();
        }
        if (this.g.d == 0) {
            return d();
        }
        return false;
    }

    private Boolean c() throws Throwable {
        long j;
        if (this.g.t == null || this.g.t.isEmpty()) {
            PutObjectRequest putObjectRequestA = a(this.g);
            TransferUtility.b(putObjectRequestA);
            try {
                this.g.t = a(putObjectRequestA);
                this.h.a(this.g.a, this.g.t);
                j = 0;
            } catch (AmazonClientException e2) {
                b.e("Error initiating multipart upload: " + this.g.a + " due to " + e2.getMessage(), e2);
                this.i.a(this.g.a, e2);
                this.i.a(this.g.a, TransferState.FAILED);
                return false;
            }
        } else {
            long jB = this.h.b(this.g.a);
            if (jB > 0) {
                b.c(String.format("Resume transfer %d from %d bytes", Integer.valueOf(this.g.a), Long.valueOf(jB)));
            }
            j = jB;
        }
        UploadTaskProgressListener uploadTaskProgressListener = new UploadTaskProgressListener(this.g);
        this.i.a(this.g.a, j, this.g.h, false);
        this.j = this.h.c(this.g.a, this.g.t);
        b.c("Multipart upload " + this.g.a + " in " + this.j.size() + " parts.");
        for (UploadPartRequest uploadPartRequest : this.j) {
            TransferUtility.b(uploadPartRequest);
            UploadPartTaskMetadata uploadPartTaskMetadata = new UploadPartTaskMetadata();
            uploadPartTaskMetadata.a = uploadPartRequest;
            uploadPartTaskMetadata.c = 0L;
            uploadPartTaskMetadata.d = TransferState.WAITING;
            this.a.put(Integer.valueOf(uploadPartRequest.n()), uploadPartTaskMetadata);
            uploadPartTaskMetadata.b = TransferThreadPool.a(new UploadPartTask(uploadPartTaskMetadata, uploadTaskProgressListener, uploadPartRequest, this.f, this.h));
        }
        try {
            Iterator<UploadPartTaskMetadata> it = this.a.values().iterator();
            boolean zBooleanValue = true;
            while (it.hasNext()) {
                zBooleanValue &= it.next().b.get().booleanValue();
            }
            if (!zBooleanValue) {
                if (this.h.e(this.g.a)) {
                    b.c("Network Connection Interrupted: Transfer " + this.g.a + " waits for network");
                    this.i.a(this.g.a, TransferState.WAITING_FOR_NETWORK);
                }
                return false;
            }
            b.c("Completing the multi-part upload transfer for " + this.g.a);
            try {
                a(this.g.a, this.g.p, this.g.q, this.g.t);
                this.i.a(this.g.a, this.g.h, this.g.h, true);
                this.i.a(this.g.a, TransferState.COMPLETED);
                return true;
            } catch (AmazonClientException e3) {
                b.e("Failed to complete multipart: " + this.g.a + " due to " + e3.getMessage(), e3);
                this.i.a(this.g.a, e3);
                this.i.a(this.g.a, TransferState.FAILED);
                return false;
            }
        } catch (Exception e4) {
            b.e("Upload resulted in an exception. " + e4);
            Iterator<UploadPartTaskMetadata> it2 = this.a.values().iterator();
            while (it2.hasNext()) {
                it2.next().b.cancel(true);
            }
            if (TransferState.CANCELED.equals(this.g.o) || TransferState.PAUSED.equals(this.g.o)) {
                b.c("Transfer is " + this.g.o);
                return false;
            }
            Iterator<UploadPartTaskMetadata> it3 = this.a.values().iterator();
            while (it3.hasNext()) {
                if (TransferState.WAITING_FOR_NETWORK.equals(it3.next().d)) {
                    b.c("Individual part is WAITING_FOR_NETWORK.");
                    this.i.a(this.g.a, TransferState.WAITING_FOR_NETWORK);
                    return false;
                }
            }
            if (RetryUtils.a(e4)) {
                b.c("Transfer is interrupted. " + e4);
                return false;
            }
            b.e("Error encountered during multi-part upload: " + this.g.a + " due to " + e4.getMessage(), e4);
            this.i.a(this.g.a, e4);
            this.i.a(this.g.a, TransferState.FAILED);
            return false;
        }
    }

    private Boolean d() {
        PutObjectRequest putObjectRequestA = a(this.g);
        ProgressListener progressListenerD = this.i.d(this.g.a);
        long length = putObjectRequestA.k().length();
        TransferUtility.a(putObjectRequestA);
        putObjectRequestA.a(progressListenerD);
        try {
            this.f.a(putObjectRequestA);
            this.i.a(this.g.a, length, length, true);
            this.i.a(this.g.a, TransferState.COMPLETED);
            return true;
        } catch (Exception e2) {
            if (TransferState.CANCELED.equals(this.g.o)) {
                b.c("Transfer is " + this.g.o);
                return false;
            }
            if (TransferState.PAUSED.equals(this.g.o)) {
                b.c("Transfer is " + this.g.o);
                new ProgressEvent(0L).a(32);
                progressListenerD.a(new ProgressEvent(0L));
                return false;
            }
            if (RetryUtils.a(e2)) {
                try {
                    if (TransferNetworkLossHandler.a() != null && !TransferNetworkLossHandler.a().b()) {
                        b.c("Thread:[" + Thread.currentThread().getId() + "]: Network wasn't available.");
                        this.i.a(this.g.a, TransferState.WAITING_FOR_NETWORK);
                        b.b("Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK");
                        new ProgressEvent(0L).a(32);
                        progressListenerD.a(new ProgressEvent(0L));
                        return false;
                    }
                } catch (TransferUtilityException e3) {
                    b.e("TransferUtilityException: [" + e3 + "]");
                }
            }
            b.b("Failed to upload: " + this.g.a + " due to " + e2.getMessage());
            this.i.a(this.g.a, e2);
            this.i.a(this.g.a, TransferState.FAILED);
            return false;
        }
    }

    private void a(int i, String str, String str2, String str3) {
        CompleteMultipartUploadRequest completeMultipartUploadRequest = new CompleteMultipartUploadRequest(str, str2, str3, this.h.d(i));
        TransferUtility.b(completeMultipartUploadRequest);
        this.f.a(completeMultipartUploadRequest);
    }

    private String a(PutObjectRequest putObjectRequest) {
        InitiateMultipartUploadRequest initiateMultipartUploadRequestB = new InitiateMultipartUploadRequest(putObjectRequest.h(), putObjectRequest.i()).b(putObjectRequest.m()).b(putObjectRequest.l()).b(putObjectRequest.t());
        TransferUtility.b(initiateMultipartUploadRequestB);
        return this.f.a(initiateMultipartUploadRequestB).c();
    }

    private PutObjectRequest a(TransferRecord transferRecord) {
        File file = new File(transferRecord.s);
        PutObjectRequest putObjectRequest = new PutObjectRequest(transferRecord.p, transferRecord.q, file);
        ObjectMetadata objectMetadata = new ObjectMetadata();
        objectMetadata.a(file.length());
        if (transferRecord.z != null) {
            objectMetadata.i(transferRecord.z);
        }
        if (transferRecord.x != null) {
            objectMetadata.k(transferRecord.x);
        }
        if (transferRecord.y != null) {
            objectMetadata.h(transferRecord.y);
        }
        if (transferRecord.v != null) {
            objectMetadata.f(transferRecord.v);
        } else {
            objectMetadata.f(Mimetypes.a().a(file));
        }
        if (transferRecord.B != null) {
            putObjectRequest.e(transferRecord.B);
        }
        if (transferRecord.D != null) {
            objectMetadata.a(transferRecord.D);
        }
        if (transferRecord.E != null) {
            objectMetadata.d(new Date(Long.valueOf(transferRecord.E).longValue()));
        }
        if (transferRecord.F != null) {
            objectMetadata.c(transferRecord.F);
        }
        if (transferRecord.C != null) {
            objectMetadata.a(transferRecord.C);
            String str = transferRecord.C.get(Headers.an);
            if (str != null) {
                try {
                    String[] strArrSplit = str.split(c);
                    ArrayList arrayList = new ArrayList();
                    for (String str2 : strArrSplit) {
                        String[] strArrSplit2 = str2.split(d);
                        arrayList.add(new Tag(strArrSplit2[0], strArrSplit2[1]));
                    }
                    putObjectRequest.a(new ObjectTagging(arrayList));
                } catch (Exception e2) {
                    b.e("Error in passing the object tags as request headers.", e2);
                }
            }
            String str3 = transferRecord.C.get(Headers.aa);
            if (str3 != null) {
                putObjectRequest.g(str3);
            }
            String str4 = transferRecord.C.get(Headers.af);
            if (str4 != null) {
                putObjectRequest.a("requester".equals(str4));
            }
        }
        if (transferRecord.H != null) {
            objectMetadata.j(transferRecord.H);
        }
        if (transferRecord.G != null) {
            putObjectRequest.a(new SSEAwsKeyManagementParams(transferRecord.G));
        }
        putObjectRequest.a(objectMetadata);
        putObjectRequest.a(a(transferRecord.I));
        return putObjectRequest;
    }

    private static CannedAccessControlList a(String str) {
        if (str == null) {
            return null;
        }
        return k.get(str);
    }

    class UploadTaskProgressListener implements ProgressListener {
        private long b;

        @Override // com.amazonaws.event.ProgressListener
        public void a(ProgressEvent progressEvent) {
        }

        UploadTaskProgressListener(TransferRecord transferRecord) {
            this.b = transferRecord.i;
        }

        public synchronized void a(int i, long j) {
            UploadPartTaskMetadata uploadPartTaskMetadata = UploadTask.this.a.get(Integer.valueOf(i));
            if (uploadPartTaskMetadata == null) {
                UploadTask.b.c("Update received for unknown part. Ignoring.");
                return;
            }
            uploadPartTaskMetadata.c = j;
            long j2 = 0;
            Iterator<Map.Entry<Integer, UploadPartTaskMetadata>> it = UploadTask.this.a.entrySet().iterator();
            while (it.hasNext()) {
                j2 += it.next().getValue().c;
            }
            if (j2 > this.b) {
                UploadTask.this.i.a(UploadTask.this.g.a, j2, UploadTask.this.g.h, true);
                this.b = j2;
            }
        }
    }

    class UploadPartTaskMetadata {
        UploadPartRequest a;
        Future<Boolean> b;
        long c;
        TransferState d;

        UploadPartTaskMetadata() {
        }
    }
}
