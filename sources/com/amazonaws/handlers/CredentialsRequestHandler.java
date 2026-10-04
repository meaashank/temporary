package com.amazonaws.handlers;

import com.amazonaws.auth.AWSCredentials;

/* JADX INFO: loaded from: classes.dex */
public abstract class CredentialsRequestHandler extends RequestHandler2 {
    protected AWSCredentials a;

    public void a(AWSCredentials aWSCredentials) {
        this.a = aWSCredentials;
    }
}
