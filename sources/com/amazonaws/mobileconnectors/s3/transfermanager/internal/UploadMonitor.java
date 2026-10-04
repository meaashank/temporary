package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.event.ProgressEvent;
import com.amazonaws.event.ProgressListenerCallbackExecutor;
import com.amazonaws.event.ProgressListenerChain;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.mobileconnectors.s3.transfermanager.PauseResult;
import com.amazonaws.mobileconnectors.s3.transfermanager.PauseStatus;
import com.amazonaws.mobileconnectors.s3.transfermanager.PersistableUpload;
import com.amazonaws.mobileconnectors.s3.transfermanager.Transfer;
import com.amazonaws.mobileconnectors.s3.transfermanager.TransferManager;
import com.amazonaws.mobileconnectors.s3.transfermanager.TransferManagerConfiguration;
import com.amazonaws.mobileconnectors.s3.transfermanager.model.UploadResult;
import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.s3.model.PartETag;
import com.amazonaws.services.s3.model.PutObjectRequest;
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
public class UploadMonitor implements TransferMonitor, Callable<UploadResult> {
    private static final Log e = LogFactory.a(UploadMonitor.class);
    private final AmazonS3 a;
    private final ExecutorService b;
    private final PutObjectRequest c;
    private ScheduledExecutorService d;
    private final TransferManagerConfiguration f;
    private final ProgressListenerCallbackExecutor g;
    private final UploadCallable h;
    private final UploadImpl i;
    private String j;
    private Future<UploadResult> m;
    private final List<Future<PartETag>> k = new ArrayList();
    private boolean l = false;
    private int n = 5000;

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferMonitor
    public synchronized Future<UploadResult> a() {
        return this.m;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(Future<UploadResult> future) {
        this.m = future;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferMonitor
    public synchronized boolean b() {
        return this.l;
    }

    private synchronized void e() {
        this.l = true;
    }

    public UploadMonitor(TransferManager transferManager, UploadImpl uploadImpl, ExecutorService executorService, UploadCallable uploadCallable, PutObjectRequest putObjectRequest, ProgressListenerChain progressListenerChain) {
        this.a = transferManager.b();
        this.f = transferManager.a();
        this.h = uploadCallable;
        this.b = executorService;
        this.c = putObjectRequest;
        this.g = ProgressListenerCallbackExecutor.a(progressListenerChain);
        this.i = uploadImpl;
        a(executorService.submit(this));
    }

    public void a(ScheduledExecutorService scheduledExecutorService) {
        this.d = scheduledExecutorService;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public UploadResult call() throws Exception {
        try {
            if (this.j == null) {
                return g();
            }
            return f();
        } catch (CancellationException unused) {
            this.i.a(Transfer.TransferState.Canceled);
            a(16);
            throw new AmazonClientException("Upload canceled");
        } catch (Exception e2) {
            this.i.a(Transfer.TransferState.Failed);
            a(8);
            throw e2;
        }
    }

    private UploadResult f() {
        Iterator<Future<PartETag>> it = this.k.iterator();
        while (it.hasNext()) {
            if (!it.next().isDone()) {
                i();
                return null;
            }
        }
        Iterator<Future<PartETag>> it2 = this.k.iterator();
        while (it2.hasNext()) {
            if (it2.next().isCancelled()) {
                throw new CancellationException();
            }
        }
        return j();
    }

    private UploadResult g() {
        UploadResult uploadResultCall = this.h.call();
        if (uploadResultCall != null) {
            h();
        } else {
            this.j = this.h.c();
            this.k.addAll(this.h.a());
            i();
        }
        return uploadResultCall;
    }

    private void h() {
        e();
        this.i.a(Transfer.TransferState.Completed);
        if (this.h.d()) {
            a(4);
        }
    }

    private void i() {
        a(this.d.schedule(new Callable<UploadResult>() { // from class: com.amazonaws.mobileconnectors.s3.transfermanager.internal.UploadMonitor.1
            @Override // java.util.concurrent.Callable
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public UploadResult call() {
                UploadMonitor.this.a((Future<UploadResult>) UploadMonitor.this.b.submit(UploadMonitor.this));
                return null;
            }
        }, this.n, TimeUnit.MILLISECONDS));
    }

    private void a(int i) {
        if (this.g == null) {
            return;
        }
        ProgressEvent progressEvent = new ProgressEvent(0L);
        progressEvent.a(i);
        this.g.a(progressEvent);
    }

    private UploadResult j() {
        CompleteMultipartUploadResult completeMultipartUploadResultA = this.a.a(new CompleteMultipartUploadRequest(this.c.h(), this.c.i(), this.j, k()));
        h();
        UploadResult uploadResult = new UploadResult();
        uploadResult.a(completeMultipartUploadResultA.i());
        uploadResult.b(completeMultipartUploadResultA.j());
        uploadResult.c(completeMultipartUploadResultA.k());
        uploadResult.d(completeMultipartUploadResultA.l());
        return uploadResult;
    }

    private List<PartETag> k() {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.h.b());
        Iterator<Future<PartETag>> it = this.k.iterator();
        while (it.hasNext()) {
            try {
                arrayList.add(it.next().get());
            } catch (Exception e2) {
                throw new AmazonClientException("Unable to upload part: " + e2.getCause().getMessage(), e2.getCause());
            }
        }
        return arrayList;
    }

    PauseResult<PersistableUpload> a(boolean z) {
        PersistableUpload persistableUploadF = this.h.f();
        if (persistableUploadF == null) {
            PauseStatus pauseStatusA = TransferManagerUtils.a(this.i.j(), z);
            if (z) {
                l();
                this.h.g();
            }
            return new PauseResult<>(pauseStatusA);
        }
        l();
        return new PauseResult<>(PauseStatus.SUCCESS, persistableUploadF);
    }

    private void l() {
        this.m.cancel(true);
        Iterator<Future<PartETag>> it = this.k.iterator();
        while (it.hasNext()) {
            it.next().cancel(true);
        }
        this.h.a().clear();
        this.k.clear();
    }

    void d() {
        l();
        this.h.g();
    }
}
