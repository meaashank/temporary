package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.event.ProgressListenerChain;
import com.amazonaws.mobileconnectors.s3.transfermanager.Transfer;
import com.amazonaws.mobileconnectors.s3.transfermanager.TransferProgress;
import java.util.Collection;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes.dex */
public abstract class MultipleFileTransfer<T extends Transfer> extends AbstractTransfer {
    protected final Collection<? extends T> e;
    private AtomicBoolean f;

    MultipleFileTransfer(String str, TransferProgress transferProgress, ProgressListenerChain progressListenerChain, Collection<? extends T> collection) {
        super(str, transferProgress, progressListenerChain);
        this.f = new AtomicBoolean(false);
        this.e = collection;
    }

    public void d() {
        boolean z = false;
        for (T t : this.e) {
            if (t.j() == Transfer.TransferState.Failed) {
                a(Transfer.TransferState.Failed);
                return;
            } else if (t.j() == Transfer.TransferState.Canceled) {
                z = true;
            }
        }
        if (z) {
            a(Transfer.TransferState.Canceled);
        } else {
            a(Transfer.TransferState.Completed);
        }
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.internal.AbstractTransfer
    public void a(Transfer.TransferState transferState) {
        super.a(transferState);
        switch (transferState) {
            case Waiting:
                a(1);
                break;
            case InProgress:
                if (this.f.compareAndSet(false, true)) {
                    a(2);
                }
                break;
            case Completed:
                a(4);
                break;
            case Canceled:
                a(16);
                break;
            case Failed:
                a(8);
                break;
        }
    }
}
