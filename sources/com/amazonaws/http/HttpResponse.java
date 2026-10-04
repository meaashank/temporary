package com.amazonaws.http;

import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.zip.GZIPInputStream;

/* JADX INFO: loaded from: classes.dex */
public class HttpResponse {
    private final String a;
    private final int b;
    private final InputStream c;
    private final Map<String, String> d;
    private InputStream e;

    private HttpResponse(String str, int i, Map<String, String> map, InputStream inputStream) {
        this.a = str;
        this.b = i;
        this.d = map;
        this.c = inputStream;
    }

    public Map<String, String> a() {
        return this.d;
    }

    public InputStream b() {
        if (this.e == null) {
            synchronized (this) {
                if (this.c != null && io.fabric.sdk.android.services.network.HttpRequest.d.equals(this.d.get("Content-Encoding"))) {
                    this.e = new GZIPInputStream(this.c);
                } else {
                    this.e = this.c;
                }
            }
        }
        return this.e;
    }

    public InputStream c() {
        return this.c;
    }

    public String d() {
        return this.a;
    }

    public int e() {
        return this.b;
    }

    public static Builder f() {
        return new Builder();
    }

    public static class Builder {
        private String a;
        private int b;
        private InputStream c;
        private final Map<String, String> d = new HashMap();

        public Builder a(String str) {
            this.a = str;
            return this;
        }

        public Builder a(int i) {
            this.b = i;
            return this;
        }

        public Builder a(InputStream inputStream) {
            this.c = inputStream;
            return this;
        }

        public Builder a(String str, String str2) {
            this.d.put(str, str2);
            return this;
        }

        public HttpResponse a() {
            return new HttpResponse(this.a, this.b, Collections.unmodifiableMap(this.d), this.c);
        }
    }
}
