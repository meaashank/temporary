package com.amazonaws.handlers;

import com.amazonaws.Request;
import com.amazonaws.Response;

/* JADX INFO: loaded from: classes.dex */
public abstract class RequestHandler2 {
    public abstract void a(Request<?> request);

    public abstract void a(Request<?> request, Response<?> response);

    public abstract void a(Request<?> request, Response<?> response, Exception exc);

    public static RequestHandler2 a(RequestHandler requestHandler) {
        return new RequestHandler2Adaptor(requestHandler);
    }
}
