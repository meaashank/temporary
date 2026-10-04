package com.amazonaws;

/* JADX INFO: loaded from: classes.dex */
public class AmazonWebServiceResponse<T> {
    private T a;
    private ResponseMetadata b;

    public T a() {
        return this.a;
    }

    public void a(T t) {
        this.a = t;
    }

    public void a(ResponseMetadata responseMetadata) {
        this.b = responseMetadata;
    }

    public ResponseMetadata b() {
        return this.b;
    }

    public String c() {
        if (this.b == null) {
            return null;
        }
        return this.b.a();
    }
}
