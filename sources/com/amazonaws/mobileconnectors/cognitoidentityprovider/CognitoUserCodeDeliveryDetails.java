package com.amazonaws.mobileconnectors.cognitoidentityprovider;

import com.amazonaws.services.cognitoidentityprovider.model.CodeDeliveryDetailsType;
import com.amazonaws.services.cognitoidentityprovider.model.MFAOptionType;

/* JADX INFO: loaded from: classes.dex */
public class CognitoUserCodeDeliveryDetails {
    private final String a;
    private final String b;
    private final String c;

    protected CognitoUserCodeDeliveryDetails(CodeDeliveryDetailsType codeDeliveryDetailsType) {
        if (codeDeliveryDetailsType != null) {
            this.a = codeDeliveryDetailsType.a();
            this.b = codeDeliveryDetailsType.b();
            this.c = codeDeliveryDetailsType.c();
        } else {
            this.a = null;
            this.b = null;
            this.c = null;
        }
    }

    protected CognitoUserCodeDeliveryDetails(MFAOptionType mFAOptionType) {
        if (mFAOptionType != null) {
            this.a = null;
            this.b = mFAOptionType.a();
            this.c = mFAOptionType.b();
        } else {
            this.a = null;
            this.b = null;
            this.c = null;
        }
    }

    public CognitoUserCodeDeliveryDetails(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    public String a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }
}
