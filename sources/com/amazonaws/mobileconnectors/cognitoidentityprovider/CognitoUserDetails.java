package com.amazonaws.mobileconnectors.cognitoidentityprovider;

/* JADX INFO: loaded from: classes.dex */
public class CognitoUserDetails {
    private CognitoUserAttributes a;
    private CognitoUserSettings b;

    protected CognitoUserDetails(CognitoUserAttributes cognitoUserAttributes, CognitoUserSettings cognitoUserSettings) {
        this.a = cognitoUserAttributes;
        this.b = cognitoUserSettings;
    }

    public CognitoUserAttributes a() {
        return this.a;
    }

    public CognitoUserSettings b() {
        return this.b;
    }
}
