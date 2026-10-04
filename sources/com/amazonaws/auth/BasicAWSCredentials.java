package com.amazonaws.auth;

/* JADX INFO: loaded from: classes.dex */
public class BasicAWSCredentials implements AWSCredentials {
    private final String a;
    private final String b;

    public BasicAWSCredentials(String str, String str2) {
        if (str == null) {
            throw new IllegalArgumentException("Access key cannot be null.");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("Secret key cannot be null.");
        }
        this.a = str;
        this.b = str2;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String a() {
        return this.a;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public String b() {
        return this.b;
    }
}
