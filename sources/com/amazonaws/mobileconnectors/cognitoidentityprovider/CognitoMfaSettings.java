package com.amazonaws.mobileconnectors.cognitoidentityprovider;

/* JADX INFO: loaded from: classes.dex */
public class CognitoMfaSettings {
    public static final String a = "SMS_MFA";
    public static final String b = "TOTP_MFA";
    private String c;
    private boolean d = false;
    private boolean e = false;

    private CognitoMfaSettings() {
    }

    public CognitoMfaSettings(String str) {
        this.c = str;
    }

    public boolean a() {
        return this.d;
    }

    public void a(boolean z) {
        this.d = z;
    }

    public boolean b() {
        return this.e;
    }

    public void b(boolean z) {
        this.e = z;
    }

    public String c() {
        return this.c;
    }
}
