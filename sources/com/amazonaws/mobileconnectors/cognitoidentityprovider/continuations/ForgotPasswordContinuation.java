package com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserCodeDeliveryDetails;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.ForgotPasswordHandler;

/* JADX INFO: loaded from: classes.dex */
public class ForgotPasswordContinuation implements CognitoIdentityProviderContinuation<CognitoUserCodeDeliveryDetails> {
    public static final boolean a = true;
    public static final boolean b = false;
    private final ForgotPasswordHandler c;
    private final CognitoUser d;
    private final CognitoUserCodeDeliveryDetails e;
    private final boolean f;
    private String g = null;
    private String h = null;

    public ForgotPasswordContinuation(CognitoUser cognitoUser, CognitoUserCodeDeliveryDetails cognitoUserCodeDeliveryDetails, boolean z, ForgotPasswordHandler forgotPasswordHandler) {
        this.c = forgotPasswordHandler;
        this.d = cognitoUser;
        this.e = cognitoUserCodeDeliveryDetails;
        this.f = z;
    }

    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.CognitoIdentityProviderContinuation
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CognitoUserCodeDeliveryDetails c() {
        return this.e;
    }

    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.CognitoIdentityProviderContinuation
    public void b() {
        if (this.f) {
            this.d.a(this.h, this.g, this.c);
        } else {
            this.d.b(this.h, this.g, this.c);
        }
    }

    public void a(String str) {
        this.g = str;
    }

    public void b(String str) {
        this.h = str;
    }
}
