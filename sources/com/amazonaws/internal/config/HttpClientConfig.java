package com.amazonaws.internal.config;

/* JADX INFO: loaded from: classes.dex */
public class HttpClientConfig {
    private final String a;

    HttpClientConfig(String str) {
        this.a = str;
    }

    public String toString() {
        return "serviceName: " + this.a;
    }

    public String a() {
        return this.a;
    }
}
