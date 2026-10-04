package com.amazonaws.mobile.client.results;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoServiceConstants;

/* JADX INFO: loaded from: classes.dex */
public enum SignInState {
    SMS_MFA("CONFIRMATION_CODE"),
    PASSWORD_VERIFIER(CognitoServiceConstants.i),
    CUSTOM_CHALLENGE(CognitoServiceConstants.j),
    DEVICE_SRP_AUTH(CognitoServiceConstants.k),
    DEVICE_PASSWORD_VERIFIER(CognitoServiceConstants.l),
    ADMIN_NO_SRP_AUTH("ADMIN_NO_SRP_AUTH"),
    NEW_PASSWORD_REQUIRED(CognitoServiceConstants.m),
    DONE("This means the flow is complete."),
    UNKNOWN("UNKNOWN");

    private final String serviceText;

    SignInState(String str) {
        this.serviceText = str;
    }

    public boolean equals(String str) {
        return this.serviceText.equals(str);
    }
}
