package com.amazonaws;

import com.amazonaws.http.HttpResponse;

/* JADX INFO: loaded from: classes.dex */
public final class Response<T> {
    private final T a;
    private final HttpResponse b;

    public Response(T t, HttpResponse httpResponse) {
        this.a = t;
        this.b = httpResponse;
    }

    public T a() {
        return this.a;
    }

    public HttpResponse b() {
        return this.b;
    }
}
