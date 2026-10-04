package com.amazonaws.http;

import com.amazonaws.util.StringUtils;
import java.io.InputStream;
import java.net.URI;
import java.util.Collections;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class HttpRequest {
    private final String a;
    private URI b;
    private final Map<String, String> c;
    private final InputStream d;
    private boolean e;

    public HttpRequest(String str, URI uri) {
        this(str, uri, null, null);
    }

    public HttpRequest(String str, URI uri, Map<String, String> map, InputStream inputStream) {
        Map<String, String> mapUnmodifiableMap;
        this.a = StringUtils.e(str);
        this.b = uri;
        if (map == null) {
            mapUnmodifiableMap = Collections.EMPTY_MAP;
        } else {
            mapUnmodifiableMap = Collections.unmodifiableMap(map);
        }
        this.c = mapUnmodifiableMap;
        this.d = inputStream;
    }

    public String a() {
        return this.a;
    }

    public URI b() {
        return this.b;
    }

    void a(URI uri) {
        this.b = uri;
    }

    public Map<String, String> c() {
        return this.c;
    }

    public InputStream d() {
        return this.d;
    }

    public long e() {
        String str;
        if (this.c == null || (str = this.c.get("Content-Length")) == null || str.isEmpty()) {
            return 0L;
        }
        return Long.valueOf(str).longValue();
    }

    public boolean f() {
        return this.e;
    }

    public void a(boolean z) {
        this.e = z;
    }
}
