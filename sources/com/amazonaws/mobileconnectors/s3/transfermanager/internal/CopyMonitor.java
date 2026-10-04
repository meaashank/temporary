package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListenerCallbackExecutor;
import com.amazonaws.event.ProgressListenerChain;
import com.amazonaws.mobileconnectors.s3.transfermanager.Transfer;
import com.amazonaws.mobileconnectors.s3.transfermanager.TransferManager;
import com.amazonaws.mobileconnectors.s3.transfermanager.model.CopyResult;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.s3.model.CopyObjectRequest;
import com.amazonaws.services.s3.model.PartETag;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class CopyMonitor implements TransferMonitor, Callable<CopyResult> {
    private final AmazonS3 a;
    private final ExecutorService b;
    private final CopyObjectRequest c;
    private ScheduledExecutorService d;
    private final CopyCallable e;
    private final CopyImpl f;
    private final ProgressListenerCallbackExecutor g;
    private String h;
    private Future<CopyResult> k;
    private final List<Future<PartETag>> i = new ArrayList();
    private boolean j = false;
    private int l = 5000;

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferMonitor
    public synchronized Future<CopyResult> a() {
        return this.k;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(Future<CopyResult> future) {
        this.k = future;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferMonitor
    public synchronized boolean b() {
        return this.j;
    }

    private synchronized void d() {
        this.j = true;
    }

    public CopyMonitor(TransferManager transferManager, CopyImpl copyImpl, ExecutorService executorService, CopyCallable copyCallable, CopyObjectRequest copyObjectRequest, ProgressListenerChain progressListenerChain) {
        this.a = transferManager.b();
        this.e = copyCallable;
        this.b = executorService;
        this.c = copyObjectRequest;
        this.f = copyImpl;
        this.g = ProgressListenerCallbackExecutor.a(progressListenerChain);
        a(executorService.submit(this));
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public CopyResult call() throws Exception {
        try {
            if (this.h == null) {
                return f();
            }
            return e();
        } catch (CancellationException unused) {
            this.f.a(Transfer.TransferState.Canceled);
            a(16);
            throw new AmazonClientException("Upload canceled");
        } catch (Exception e) {
            this.f.a(Transfer.TransferState.Failed);
            a(8);
            throw e;
        }
    }

    public void a(ScheduledExecutorService scheduledExecutorService) {
        this.d = scheduledExecutorService;
    }

    private CopyResult e() {
        Iterator<Future<PartETag>> it = this.i.iterator();
        while (it.hasNext()) {
            if (!it.next().isDone()) {
                h();
                return null;
            }
        }
        Iterator<Future<PartETag>> it2 = this.i.iterator();
        while (it2.hasNext()) {
            if (it2.next().isCancelled()) {
                throw new CancellationException();
            }
        }
        return i();
    }

    private void a(int i) {
        if (this.g == null) {
            return;
        }
        ProgressEvent progressEvent = new ProgressEvent(0L);
        progressEvent.a(i);
        this.g.a(progressEvent);
    }

    private CopyResult f() throws Exception {
        CopyResult copyResultCall = this.e.call();
        if (copyResultCall != null) {
            g();
        } else {
            this.h = this.e.b();
            this.i.addAll(this.e.a());
            h();
        }
        return copyResultCall;
    }

    private void g() {
        d();
        this.f.a(Transfer.TransferState.Completed);
        if (this.e.c()) {
            a(4);
        }
    }

    private void h() {
        a(this.d.schedule(new Callable<CopyResult>() { // from class: com.amazonaws.mobileconnectors.s3.transfermanager.internal.CopyMonitor.1
            @Override // java.util.concurrent.Callable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public CopyResult call() {
                CopyMonitor.this.a((Future<CopyResult>) CopyMonitor.this.b.submit(CopyMonitor.this));
                return null;
            }
        }, this.l, TimeUnit.MILLISECONDS));
    }

    private CopyResult i() {
        CompleteMultipartUploadResult completeMultipartUploadResultA = this.a.a(new CompleteMultipartUploadRequest(this.c.k(), this.c.l(), this.h, j()));
        g();
        CopyResult copyResult = new CopyResult();
        copyResult.a(this.c.h());
        copyResult.b(this.c.i());
        copyResult.c(completeMultipartUploadResultA.i());
        copyResult.d(completeMultipartUploadResultA.j());
        copyResult.e(completeMultipartUploadResultA.k());
        copyResult.f(completeMultipartUploadResultA.l());
        return copyResult;
    }

    private List<PartETag> j() {
        ArrayList arrayList = new ArrayList(this.i.size());
        Iterator<Future<PartETag>> it = this.i.iterator();
        while (it.hasNext()) {
            try {
                arrayList.add(it.next().get());
            } catch (Exception e) {
                throw new AmazonClientException("Unable to copy part: " + e.getCause().getMessage(), e.getCause());
            }
        }
        return arrayList;
    }
}
