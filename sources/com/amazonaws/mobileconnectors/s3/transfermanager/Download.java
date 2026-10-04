package com.amazonaws.mobileconnectors.s3.transfermanager;

import com.amazonaws.services.s3.model.ObjectMetadata;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface Download extends Transfer {
    ObjectMetadata a();

    String b();

    String c();

    void d();

    PersistableDownload e();
}
