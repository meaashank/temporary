package com.amazonaws.mobileconnectors.s3.transferutility;

import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.mobileconnectors.s3.transferutility.UploadTask;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
class UploadPartTask implements Callable<Boolean> {
    private static final Log a = LogFactory.a(UploadPartTask.class);
    private final UploadTask.UploadPartTaskMetadata b;
    private final UploadTask.UploadTaskProgressListener c;
    private final UploadPartRequest d;
    private final AmazonS3 e;
    private final TransferDBUtil f;

    public UploadPartTask(UploadTask.UploadPartTaskMetadata uploadPartTaskMetadata, UploadTask.UploadTaskProgressListener uploadTaskProgressListener, UploadPartRequest uploadPartRequest, AmazonS3 amazonS3, TransferDBUtil transferDBUtil) {
        this.b = uploadPartTaskMetadata;
        this.c = uploadTaskProgressListener;
        this.d = uploadPartRequest;
        this.e = amazonS3;
        this.f = transferDBUtil;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Boolean call() throws Exception {
        try {
            this.b.d = TransferState.IN_PROGRESS;
            this.d.a(new UploadPartTaskProgressListener(this.c));
            UploadPartResult uploadPartResultA = this.e.a(this.d);
            this.b.d = TransferState.PART_COMPLETED;
            this.f.a(this.d.h(), TransferState.PART_COMPLETED);
            this.f.b(this.d.h(), uploadPartResultA.b());
            return true;
        } catch (Exception e) {
            a.e("Upload part interrupted: " + e);
            new ProgressEvent(0L).a(32);
            this.c.a(new ProgressEvent(0L));
            try {
                if (TransferNetworkLossHandler.a() != null && !TransferNetworkLossHandler.a().b()) {
                    a.c("Thread: [" + Thread.currentThread().getId() + "]: Network wasn't available.");
                    this.b.d = TransferState.WAITING_FOR_NETWORK;
                    this.f.a(this.d.h(), TransferState.WAITING_FOR_NETWORK);
                    a.c("Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK");
                    return false;
                }
            } catch (TransferUtilityException e2) {
                a.e("TransferUtilityException: [" + e2 + "]");
            }
            this.b.d = TransferState.FAILED;
            this.f.a(this.d.h(), TransferState.FAILED);
            a.e("Encountered error uploading part ", e);
            throw e;
        }
    }

    private class UploadPartTaskProgressListener implements ProgressListener {
        private UploadTask.UploadTaskProgressListener b;
        private long c;

        public UploadPartTaskProgressListener(UploadTask.UploadTaskProgressListener uploadTaskProgressListener) {
            this.b = uploadTaskProgressListener;
        }

        @Override // com.amazonaws.event.ProgressListener
        public void a(ProgressEvent progressEvent) {
            if (32 == progressEvent.b()) {
                UploadPartTask.a.c("Reset Event triggerred. Resetting the bytesCurrent to 0.");
                this.c = 0L;
            } else {
                this.c += progressEvent.a();
            }
            this.b.a(UploadPartTask.this.d.n(), this.c);
        }
    }
}
