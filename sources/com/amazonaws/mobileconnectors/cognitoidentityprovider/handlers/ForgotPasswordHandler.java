package com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ForgotPasswordContinuation;

/* JADX INFO: loaded from: classes.dex */
public interface ForgotPasswordHandler {
    void a();

    void a(ForgotPasswordContinuation forgotPasswordContinuation);

    void a(Exception exc);
}
