package com.amazonaws.internal;

import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSCredentialsProvider;

/* JADX INFO: loaded from: classes.dex */
public class StaticCredentialsProvider implements AWSCredentialsProvider {
    private final AWSCredentials a;

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public void b() {
    }

    public StaticCredentialsProvider(AWSCredentials aWSCredentials) {
        this.a = aWSCredentials;
    }

    @Override // com.amazonaws.auth.AWSCredentialsProvider
    public AWSCredentials a() {
        return this.a;
    }
}
