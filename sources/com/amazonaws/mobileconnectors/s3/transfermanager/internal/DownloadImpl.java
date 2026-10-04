package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.event.ProgressListenerChain;
import com.amazonaws.mobileconnectors.s3.transfermanager.Download;
import com.amazonaws.mobileconnectors.s3.transfermanager.PersistableDownload;
import com.amazonaws.mobileconnectors.s3.transfermanager.Transfer;
import com.amazonaws.mobileconnectors.s3.transfermanager.TransferProgress;
import com.amazonaws.mobileconnectors.s3.transfermanager.exception.PauseException;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.ObjectMetadata;
import com.amazonaws.services.s3.model.S3Object;
import java.io.File;

/* JADX INFO: loaded from: classes.dex */
public class DownloadImpl extends AbstractTransfer implements Download {
    S3Object e;
    private final PersistableDownload f;

    public DownloadImpl(String str, TransferProgress transferProgress, ProgressListenerChain progressListenerChain, S3Object s3Object, TransferStateChangeListener transferStateChangeListener, GetObjectRequest getObjectRequest, File file) {
        super(str, transferProgress, progressListenerChain, transferStateChangeListener);
        this.e = s3Object;
        this.f = a(getObjectRequest, file);
        S3ProgressPublisher.a(progressListenerChain, this.f);
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Download
    public ObjectMetadata a() {
        return this.e.a();
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Download
    public String b() {
        return this.e.d();
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Download
    public String c() {
        return this.e.e();
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Download
    public synchronized void d() {
        this.b.a().cancel(true);
        if (this.e != null) {
            this.e.b().g();
        }
        a(Transfer.TransferState.Canceled);
    }

    public synchronized void m() {
        this.b.a().cancel(true);
        synchronized (this) {
            this.a = Transfer.TransferState.Canceled;
        }
    }

    public synchronized void a(S3Object s3Object) {
        this.e = s3Object;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.internal.AbstractTransfer
    public void a(Transfer.TransferState transferState) {
        super.a(transferState);
        if (transferState == Transfer.TransferState.Completed) {
            a(4);
        }
    }

    private PersistableDownload a(GetObjectRequest getObjectRequest, File file) {
        if (getObjectRequest.q() == null) {
            return new PersistableDownload(getObjectRequest.k(), getObjectRequest.l(), getObjectRequest.m(), getObjectRequest.n(), getObjectRequest.t(), getObjectRequest.v(), file.getAbsolutePath());
        }
        return null;
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Download
    public PersistableDownload e() {
        Transfer.TransferState transferStateJ = j();
        this.b.a().cancel(true);
        if (this.f == null) {
            throw new PauseException(TransferManagerUtils.a(transferStateJ, true));
        }
        return this.f;
    }
}
