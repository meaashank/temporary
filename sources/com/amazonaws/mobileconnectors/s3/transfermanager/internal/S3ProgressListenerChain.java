package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.event.ProgressListener;
import com.amazonaws.event.ProgressListenerChain;
import com.amazonaws.mobileconnectors.s3.transfermanager.PersistableTransfer;

/* JADX INFO: loaded from: classes.dex */
public class S3ProgressListenerChain extends ProgressListenerChain implements S3ProgressListener {
    public S3ProgressListenerChain(ProgressListener... progressListenerArr) {
        super(progressListenerArr);
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.internal.S3ProgressListener
    public void a(PersistableTransfer persistableTransfer) {
        for (ProgressListener progressListener : a()) {
            if (progressListener instanceof S3ProgressListener) {
                ((S3ProgressListener) progressListener).a(persistableTransfer);
            }
        }
    }
}
