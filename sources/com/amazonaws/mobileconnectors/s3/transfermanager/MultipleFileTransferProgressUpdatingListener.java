package com.amazonaws.mobileconnectors.s3.transfermanager;

import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListenerChain;
import com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferProgressUpdatingListener;

/* JADX INFO: loaded from: classes.dex */
final class MultipleFileTransferProgressUpdatingListener extends TransferProgressUpdatingListener {
    private final ProgressListenerChain a;

    public MultipleFileTransferProgressUpdatingListener(TransferProgress transferProgress, ProgressListenerChain progressListenerChain) {
        super(transferProgress);
        this.a = progressListenerChain;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferProgressUpdatingListener, com.amazonaws.event.ProgressListener
    public void a(ProgressEvent progressEvent) {
        super.a(progressEvent);
        this.a.a(progressEvent);
    }
}
