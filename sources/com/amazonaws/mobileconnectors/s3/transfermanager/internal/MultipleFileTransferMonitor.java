package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.mobileconnectors.s3.transfermanager.Transfer;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class MultipleFileTransferMonitor implements TransferMonitor {
    private final Collection<? extends AbstractTransfer> a;
    private final AbstractTransfer b;
    private final Future<?> c = new Future<Object>() { // from class: com.amazonaws.mobileconnectors.s3.transfermanager.internal.MultipleFileTransferMonitor.1
        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z) {
            return true;
        }

        @Override // java.util.concurrent.Future
        public Object get() throws ExecutionException, InterruptedException {
            Iterator it = MultipleFileTransferMonitor.this.a.iterator();
            Object obj = null;
            while (it.hasNext()) {
                obj = ((AbstractTransfer) it.next()).l().a().get();
            }
            return obj;
        }

        @Override // java.util.concurrent.Future
        public Object get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            Iterator it = MultipleFileTransferMonitor.this.a.iterator();
            Object obj = null;
            while (it.hasNext()) {
                obj = ((AbstractTransfer) it.next()).l().a().get(j, timeUnit);
            }
            return obj;
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return MultipleFileTransferMonitor.this.b.j() == Transfer.TransferState.Canceled;
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return MultipleFileTransferMonitor.this.b();
        }
    };

    public MultipleFileTransferMonitor(AbstractTransfer abstractTransfer, Collection<? extends AbstractTransfer> collection) {
        this.a = collection;
        this.b = abstractTransfer;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferMonitor
    public Future<?> a() {
        return this.c;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferMonitor
    public synchronized boolean b() {
        Iterator<? extends AbstractTransfer> it = this.a.iterator();
        while (it.hasNext()) {
            if (!it.next().f()) {
                return false;
            }
        }
        return true;
    }
}
