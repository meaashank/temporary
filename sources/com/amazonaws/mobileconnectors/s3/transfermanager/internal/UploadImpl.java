package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.event.ProgressListenerChain;
import com.amazonaws.mobileconnectors.s3.transfermanager.PauseResult;
import com.amazonaws.mobileconnectors.s3.transfermanager.PauseStatus;
import com.amazonaws.mobileconnectors.s3.transfermanager.PersistableUpload;
import com.amazonaws.mobileconnectors.s3.transfermanager.TransferProgress;
import com.amazonaws.mobileconnectors.s3.transfermanager.Upload;
import com.amazonaws.mobileconnectors.s3.transfermanager.exception.PauseException;
import com.amazonaws.mobileconnectors.s3.transfermanager.model.UploadResult;
import java.util.concurrent.ExecutionException;

/* JADX INFO: loaded from: classes.dex */
public class UploadImpl extends AbstractTransfer implements Upload {
    public UploadImpl(String str, TransferProgress transferProgress, ProgressListenerChain progressListenerChain, TransferStateChangeListener transferStateChangeListener) {
        super(str, transferProgress, progressListenerChain, transferStateChangeListener);
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Upload
    public UploadResult a() {
        UploadResult uploadResult = null;
        while (true) {
            try {
                if (this.b.b() && uploadResult != null) {
                    return uploadResult;
                }
                uploadResult = (UploadResult) this.b.a().get();
            } catch (ExecutionException e) {
                a(e);
                return null;
            }
        }
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Upload
    public PersistableUpload b() {
        PauseResult<PersistableUpload> pauseResultB = b(true);
        if (pauseResultB.a() != PauseStatus.SUCCESS) {
            throw new PauseException(pauseResultB.a());
        }
        return pauseResultB.b();
    }

    private PauseResult<PersistableUpload> b(boolean z) {
        return ((UploadMonitor) this.b).a(z);
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Upload
    public PauseResult<PersistableUpload> a(boolean z) {
        return b(z);
    }

    @Override // com.amazonaws.mobileconnectors.s3.transfermanager.Upload
    public void c() {
        ((UploadMonitor) this.b).d();
    }
}
