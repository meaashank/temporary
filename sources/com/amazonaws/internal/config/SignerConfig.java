package com.amazonaws.internal.config;

/* JADX INFO: loaded from: classes.dex */
public class SignerConfig {
    private final String a;

    SignerConfig(String str) {
        this.a = str;
    }

    SignerConfig(SignerConfig signerConfig) {
        this.a = signerConfig.a();
    }

    public String a() {
        return this.a;
    }

    public String toString() {
        return this.a;
    }
}
