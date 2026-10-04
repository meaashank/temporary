package com.amazonaws.mobileconnectors.s3.transferutility;

/* JADX INFO: loaded from: classes.dex */
public interface TransferListener {
    void a(int i, long j, long j2);

    void a(int i, TransferState transferState);

    void a(int i, Exception exc);
}
