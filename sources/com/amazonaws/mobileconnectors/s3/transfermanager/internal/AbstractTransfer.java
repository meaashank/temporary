package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListener;
import com.amazonaws.event.ProgressListenerCallbackExecutor;
import com.amazonaws.event.ProgressListenerChain;
import com.amazonaws.mobileconnectors.s3.transfermanager.Transfer;
import com.amazonaws.mobileconnectors.s3.transfermanager.TransferProgress;
import com.amazonaws.services.s3.model.LegacyS3ProgressListener;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractTransfer implements Transfer {
    protected volatile Transfer.TransferState a;
    protected TransferMonitor b;
    protected final ProgressListenerChain c;
    protected final Collection<TransferStateChangeListener> d;
    private final TransferProgress e;
    private final String f;

    AbstractTransfer(String str, TransferProgress transferProgress, ProgressListenerChain progressListenerChain) {
        this(str, transferProgress, progressListenerChain, null);
    }

    AbstractTransfer(String str, TransferProgress transferProgress, ProgressListenerChain progressListenerChain, TransferStateChangeListener transferStateChangeListener) {
        this.a = Transfer.TransferState.Waiting;
        this.d = new LinkedList();
        this.f = str;
        this.c = progressListenerChain;
        this.e = transferProgress;
        a(transferStateChangeListener);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0016  */
    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Transfer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean f() {
        /*
            r2 = this;
            monitor-enter(r2)
            com.amazonaws.mobileconnectors.s3.transfermanager.Transfer$TransferState r0 = r2.a     // Catch: java.lang.Throwable -> L19
            com.amazonaws.mobileconnectors.s3.transfermanager.Transfer$TransferState r1 = com.amazonaws.mobileconnectors.s3.transfermanager.Transfer.TransferState.Failed     // Catch: java.lang.Throwable -> L19
            if (r0 == r1) goto L16
            com.amazonaws.mobileconnectors.s3.transfermanager.Transfer$TransferState r0 = r2.a     // Catch: java.lang.Throwable -> L19
            com.amazonaws.mobileconnectors.s3.transfermanager.Transfer$TransferState r1 = com.amazonaws.mobileconnectors.s3.transfermanager.Transfer.TransferState.Completed     // Catch: java.lang.Throwable -> L19
            if (r0 == r1) goto L16
            com.amazonaws.mobileconnectors.s3.transfermanager.Transfer$TransferState r0 = r2.a     // Catch: java.lang.Throwable -> L19
            com.amazonaws.mobileconnectors.s3.transfermanager.Transfer$TransferState r1 = com.amazonaws.mobileconnectors.s3.transfermanager.Transfer.TransferState.Canceled     // Catch: java.lang.Throwable -> L19
            if (r0 != r1) goto L14
            goto L16
        L14:
            r0 = 0
            goto L17
        L16:
            r0 = 1
        L17:
            monitor-exit(r2)
            return r0
        L19:
            r0 = move-exception
            monitor-exit(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazonaws.mobileconnectors.s3.transfermanager.internal.AbstractTransfer.f():boolean");
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Transfer
    public void g() throws InterruptedException {
        Object obj = null;
        while (true) {
            try {
                if (this.b.b() && obj != null) {
                    return;
                } else {
                    obj = this.b.a().get();
                }
            } catch (ExecutionException e) {
                a(e);
                return;
            }
        }
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Transfer
    public AmazonClientException h() throws InterruptedException {
        while (!this.b.b()) {
            try {
                this.b.a().get();
            } catch (ExecutionException e) {
                return b(e);
            }
        }
        this.b.a().get();
        return null;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Transfer
    public String i() {
        return this.f;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Transfer
    public synchronized Transfer.TransferState j() {
        return this.a;
    }

    public void a(Transfer.TransferState transferState) {
        synchronized (this) {
            this.a = transferState;
        }
        Iterator<TransferStateChangeListener> it = this.d.iterator();
        while (it.hasNext()) {
            it.next().a(this, transferState);
        }
    }

    public void b(Transfer.TransferState transferState) {
        Iterator<TransferStateChangeListener> it = this.d.iterator();
        while (it.hasNext()) {
            it.next().a(this, transferState);
        }
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Transfer
    public synchronized void a(ProgressListener progressListener) {
        this.c.a(progressListener);
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Transfer
    public synchronized void b(ProgressListener progressListener) {
        this.c.b(progressListener);
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Transfer
    @Deprecated
    public synchronized void a(com.amazonaws.services.s3.model.ProgressListener progressListener) {
        this.c.a(new LegacyS3ProgressListener(progressListener));
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Transfer
    @Deprecated
    public synchronized void b(com.amazonaws.services.s3.model.ProgressListener progressListener) {
        this.c.b(new LegacyS3ProgressListener(progressListener));
    }

    public synchronized void a(TransferStateChangeListener transferStateChangeListener) {
        if (transferStateChangeListener != null) {
            this.d.add(transferStateChangeListener);
        }
    }

    public synchronized void b(TransferStateChangeListener transferStateChangeListener) {
        if (transferStateChangeListener != null) {
            this.d.remove(transferStateChangeListener);
        }
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Transfer
    public TransferProgress k() {
        return this.e;
    }

    public void a(TransferMonitor transferMonitor) {
        this.b = transferMonitor;
    }

    public TransferMonitor l() {
        return this.b;
    }

    protected void a(int i) {
        ProgressListenerCallbackExecutor.a(this.c, new ProgressEvent(i, 0L));
    }

    protected void a(ExecutionException executionException) {
        throw b(executionException);
    }

    protected AmazonClientException b(ExecutionException executionException) {
        Throwable cause = executionException.getCause();
        if (cause instanceof AmazonClientException) {
            return (AmazonClientException) cause;
        }
        return new AmazonClientException("Unable to complete transfer: " + cause.getMessage(), cause);
    }
}
