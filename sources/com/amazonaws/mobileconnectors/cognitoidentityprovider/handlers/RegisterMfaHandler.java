package com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.VerifyMfaContinuation;

/* JADX INFO: loaded from: classes.dex */
public interface RegisterMfaHandler {
    void a(VerifyMfaContinuation verifyMfaContinuation);

    void a(Exception exc);

    void a(String str);
}
