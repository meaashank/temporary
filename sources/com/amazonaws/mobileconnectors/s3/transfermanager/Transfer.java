package com.amazonaws.mobileconnectors.s3.transfermanager;

import com.amazonaws.AmazonClientException;
import com.amazonaws.event.ProgressListener;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface Transfer {

    public enum TransferState {
        Waiting,
        InProgress,
        Completed,
        Canceled,
        Failed
    }

    void a(ProgressListener progressListener);

    @Deprecated
    void a(com.amazonaws.services.s3.model.ProgressListener progressListener);

    void b(ProgressListener progressListener);

    @Deprecated
    void b(com.amazonaws.services.s3.model.ProgressListener progressListener);

    boolean f();

    void g();

    AmazonClientException h();

    String i();

    TransferState j();

    TransferProgress k();
}
