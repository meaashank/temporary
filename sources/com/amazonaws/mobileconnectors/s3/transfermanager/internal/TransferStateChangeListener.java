package com.amazonaws.mobileconnectors.s3.transfermanager.internal;

import com.amazonaws.mobileconnectors.s3.transfermanager.Transfer;

/* JADX INFO: loaded from: classes.dex */
public interface TransferStateChangeListener {
    void a(Transfer transfer, Transfer.TransferState transferState);
}
