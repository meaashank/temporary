package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.PartETag;
import com.amazonaws.services.s3.model.UploadPartRequest;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public class UploadPartCallable implements Callable<PartETag> {
    private final AmazonS3 a;
    private final UploadPartRequest b;

    public UploadPartCallable(AmazonS3 amazonS3, UploadPartRequest uploadPartRequest) {
        this.a = amazonS3;
        this.b = uploadPartRequest;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public PartETag call() {
        return this.a.a(this.b).d();
    }
}
