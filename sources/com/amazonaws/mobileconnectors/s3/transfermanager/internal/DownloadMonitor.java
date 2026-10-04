package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import java.util.concurrent.Future;

/* JADX INFO: loaded from: classes.dex */
public class DownloadMonitor implements TransferMonitor {
    private final Future<?> a;
    private final DownloadImpl b;

    public DownloadMonitor(DownloadImpl downloadImpl, Future<?> future) {
        this.b = downloadImpl;
        this.a = future;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferMonitor
    public Future<?> a() {
        return this.a;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.internal.TransferMonitor
    public boolean b() {
        return this.b.f();
    }
}
