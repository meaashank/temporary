package com.amazonaws;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ResponseMetadata {
    public static final String a = "AWS_REQUEST_ID";
    protected final Map<String, String> b;

    public ResponseMetadata(Map<String, String> map) {
        this.b = map;
    }

    public ResponseMetadata(ResponseMetadata responseMetadata) {
        this(responseMetadata.b);
    }

    public String a() {
        return this.b.get(a);
    }

    public String toString() {
        return this.b == null ? "{}" : this.b.toString();
    }
}
