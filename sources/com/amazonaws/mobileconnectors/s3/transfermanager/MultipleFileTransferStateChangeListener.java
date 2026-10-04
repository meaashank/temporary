package com.amazonaws.mobileconnectors.s3.transfermanager;

import com.amazonaws.AmazonClientException;
import com.amazonaws.mobileconnectors.s3.transfermanager.Transfer;
import com.amazonaws.mobileconnectors.s3.transfermanager.internal.MultipleFileTransfer;
import com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferStateChangeListener;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: compiled from: MultipleFileTransferChangeStateListener.java */
/* JADX INFO: loaded from: classes.dex */
final class MultipleFileTransferStateChangeListener implements TransferStateChangeListener {
    private final CountDownLatch a;
    private final MultipleFileTransfer<?> b;

    public MultipleFileTransferStateChangeListener(CountDownLatch countDownLatch, MultipleFileTransfer<?> multipleFileTransfer) {
        this.a = countDownLatch;
        this.b = multipleFileTransfer;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferStateChangeListener
    public void a(Transfer transfer, Transfer.TransferState transferState) {
        try {
            this.a.await();
            synchronized (this.b) {
                if (this.b.j() != transferState && !this.b.f()) {
                    if (transferState == Transfer.TransferState.InProgress) {
                        this.b.a(transferState);
                    } else if (this.b.l().b()) {
                        this.b.d();
                    } else {
                        this.b.a(Transfer.TransferState.InProgress);
                    }
                }
            }
        } catch (InterruptedException unused) {
            throw new AmazonClientException("Couldn't wait for all downloads to be queued");
        }
    }
}
