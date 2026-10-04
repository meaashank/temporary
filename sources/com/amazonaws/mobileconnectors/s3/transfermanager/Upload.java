package com.amazonaws.mobileconnectors.s3.transfermanager;

import com.amazonaws.mobileconnectors.s3.transfermanager.model.UploadResult;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface Upload extends Transfer {
    PauseResult<PersistableUpload> a(boolean z);

    UploadResult a();

    PersistableUpload b();

    void c();
}
