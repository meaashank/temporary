package com.amazonaws.auth;

import com.amazonaws.Request;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public interface Presigner {
    void a(Request<?> request, AWSCredentials aWSCredentials, Date date);
}
