package com.amazonaws.mobileconnectors.s3.transfermanager.exception;

import com.amazonaws.AmazonClientException;
import com.amazonaws.mobileconnectors.s3.transfermanager.PauseStatus;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class PauseException extends AmazonClientException {
    private static final long serialVersionUID = 1;
    private final PauseStatus a;

    @Override // com.amazonaws.AmazonClientException
    public boolean a() {
        return false;
    }

    public PauseException(PauseStatus pauseStatus) {
        super("Failed to pause operation; status=" + pauseStatus);
        if (pauseStatus == null || pauseStatus == PauseStatus.SUCCESS) {
            throw new IllegalArgumentException();
        }
        this.a = pauseStatus;
    }

    public PauseStatus b() {
        return this.a;
    }
}
