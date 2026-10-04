package com.amazonaws.auth;

import com.amazonaws.Request;

/* JADX INFO: loaded from: classes.dex */
public interface Signer {
    void a(Request<?> request, AWSCredentials aWSCredentials);
}
