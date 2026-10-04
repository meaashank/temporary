package com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoDevice;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserSession;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.AuthenticationContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.MultiFactorAuthenticationContinuation;

/* JADX INFO: loaded from: classes.dex */
public interface AuthenticationHandler {
    void a(CognitoUserSession cognitoUserSession, CognitoDevice cognitoDevice);

    void a(AuthenticationContinuation authenticationContinuation, String str);

    void a(ChallengeContinuation challengeContinuation);

    void a(MultiFactorAuthenticationContinuation multiFactorAuthenticationContinuation);

    void a(Exception exc);
}
