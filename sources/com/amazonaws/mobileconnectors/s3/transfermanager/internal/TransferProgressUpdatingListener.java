package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.mobileconnectors.s3.transfermanager.TransferProgress;

/* JADX INFO: loaded from: classes.dex */
public class TransferProgressUpdatingListener implements ProgressListener {
    private final TransferProgress a;

    public TransferProgressUpdatingListener(TransferProgress transferProgress) {
        this.a = transferProgress;
    }

    @Override // com.amazonaws.event.ProgressListener
    public void a(ProgressEvent progressEvent) {
        long jA = progressEvent.a();
        if (jA == 0) {
            return;
        }
        this.a.a(jA);
    }
}
