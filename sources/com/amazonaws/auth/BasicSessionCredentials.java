package com.amazonaws.auth;

/* JADX INFO: loaded from: classes.dex */
public class BasicSessionCredentials implements AWSSessionCredentials {
    private final String a;
    private final String b;
    private final String c;

    public BasicSessionCredentials(String str, String str2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = str3;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String a() {
        return this.a;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String b() {
        return this.b;
    }

    @Override // com.amazonaws.auth.AWSSessionCredentials
    public String d() {
        return this.c;
    }
}
