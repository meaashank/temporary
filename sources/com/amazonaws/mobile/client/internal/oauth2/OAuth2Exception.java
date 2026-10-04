package com.amazonaws.mobile.client.internal.oauth2;

/* JADX INFO: loaded from: classes.dex */
public class OAuth2Exception extends RuntimeException {
    String a;
    String b;
    String c;

    public OAuth2Exception(String str, String str2, String str3, String str4) {
        super(str);
        this.a = str2;
        this.b = str3;
        this.c = str4;
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
