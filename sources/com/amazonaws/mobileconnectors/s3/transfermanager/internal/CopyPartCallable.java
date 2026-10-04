package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.services.s3.AmazonS3;
import com.amazonaws.services.s3.model.CopyPartRequest;
import com.amazonaws.services.s3.model.PartETag;
import java.util.concurrent.Callable;

/* JADX INFO: loaded from: classes.dex */
public class CopyPartCallable implements Callable<PartETag> {
    private final AmazonS3 a;
    private final CopyPartRequest b;

    public CopyPartCallable(AmazonS3 amazonS3, CopyPartRequest copyPartRequest) {
        this.a = amazonS3;
        this.b = copyPartRequest;
    }

    @Override // java.util.concurrent.Callable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public PartETag call() {
        return this.a.a(this.b).c();
    }
}
