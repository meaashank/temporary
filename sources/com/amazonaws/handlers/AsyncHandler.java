package com.amazonaws.handlers;

import com.amazonaws.AmazonWebServiceRequest;

/* JADX INFO: loaded from: classes.dex */
public interface AsyncHandler<REQUEST extends AmazonWebServiceRequest, RESULT> {
    void a(REQUEST request, RESULT result);

    void a(Exception exc);
}
