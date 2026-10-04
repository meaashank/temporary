package com.amazonaws.auth;

import com.amazonaws.Request;

/* JADX INFO: loaded from: classes.dex */
public class NoOpSigner implements Signer {
    @Override // com.amazonaws.auth.Signer
    public void a(Request<?> request, AWSCredentials aWSCredentials) {
    }
}
