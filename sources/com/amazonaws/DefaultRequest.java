package com.amazonaws;

import com.amazonaws.http.HttpMethodName;
import com.amazonaws.util.AWSRequestMetrics;
import java.io.InputStream;
import java.net.URI;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class DefaultRequest<T> implements Request<T> {
    private String a;
    private boolean b;
    private final Map<String, String> c;
    private final Map<String, String> d;
    private URI e;
    private String f;
    private final AmazonWebServiceRequest g;
    private HttpMethodName h;
    private InputStream i;
    private int j;
    private AWSRequestMetrics k;

    public DefaultRequest(AmazonWebServiceRequest amazonWebServiceRequest, String str) {
        this.b = false;
        this.c = new LinkedHashMap();
        this.d = new HashMap();
        this.h = HttpMethodName.POST;
        this.f = str;
        this.g = amazonWebServiceRequest;
    }

    public DefaultRequest(String str) {
        this(null, str);
    }

    @Override // com.amazonaws.Request
    public AmazonWebServiceRequest a() {
        return this.g;
    }

    @Override // com.amazonaws.Request
    public void a(String str, String str2) {
        this.d.put(str, str2);
    }

    @Override // com.amazonaws.Request
    public Map<String, String> b() {
        return this.d;
    }

    @Override // com.amazonaws.Request
    public void a(String str) {
        this.a = str;
    }

    @Override // com.amazonaws.Request
    public String c() {
        return this.a;
    }

    @Override // com.amazonaws.Request
    public void b(String str, String str2) {
        this.c.put(str, str2);
    }

    @Override // com.amazonaws.Request
    public Map<String, String> d() {
        return this.c;
    }

    @Override // com.amazonaws.Request
    public Request<T> c(String str, String str2) {
        b(str, str2);
        return this;
    }

    @Override // com.amazonaws.Request
    public HttpMethodName e() {
        return this.h;
    }

    @Override // com.amazonaws.Request
    public void a(HttpMethodName httpMethodName) {
        this.h = httpMethodName;
    }

    @Override // com.amazonaws.Request
    public void a(URI uri) {
        this.e = uri;
    }

    @Override // com.amazonaws.Request
    public URI f() {
        return this.e;
    }

    @Override // com.amazonaws.Request
    public String g() {
        return this.f;
    }

    @Override // com.amazonaws.Request
    public InputStream h() {
        return this.i;
    }

    @Override // com.amazonaws.Request
    public void a(InputStream inputStream) {
        this.i = inputStream;
    }

    @Override // com.amazonaws.Request
    public void a(Map<String, String> map) {
        this.d.clear();
        this.d.putAll(map);
    }

    @Override // com.amazonaws.Request
    public void b(Map<String, String> map) {
        this.c.clear();
        this.c.putAll(map);
    }

    @Override // com.amazonaws.Request
    public int i() {
        return this.j;
    }

    @Override // com.amazonaws.Request
    public void a(int i) {
        this.j = i;
    }

    @Override // com.amazonaws.Request
    public Request<T> b(int i) {
        a(i);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(e());
        sb.append(" ");
        sb.append(f());
        sb.append(" ");
        String strC = c();
        if (strC == null) {
            sb.append("/");
        } else {
            if (!strC.startsWith("/")) {
                sb.append("/");
            }
            sb.append(strC);
        }
        sb.append(" ");
        if (!d().isEmpty()) {
            sb.append("Parameters: (");
            for (String str : d().keySet()) {
                String str2 = d().get(str);
                sb.append(str);
                sb.append(": ");
                sb.append(str2);
                sb.append(", ");
            }
            sb.append(") ");
        }
        if (!b().isEmpty()) {
            sb.append("Headers: (");
            for (String str3 : b().keySet()) {
                String str4 = b().get(str3);
                sb.append(str3);
                sb.append(": ");
                sb.append(str4);
                sb.append(", ");
            }
            sb.append(") ");
        }
        return sb.toString();
    }

    @Override // com.amazonaws.Request
    @Deprecated
    public AWSRequestMetrics j() {
        return this.k;
    }

    @Override // com.amazonaws.Request
    @Deprecated
    public void a(AWSRequestMetrics aWSRequestMetrics) {
        if (this.k == null) {
            this.k = aWSRequestMetrics;
            return;
        }
        throw new IllegalStateException("AWSRequestMetrics has already been set on this request");
    }

    @Override // com.amazonaws.Request
    public boolean k() {
        return this.b;
    }

    @Override // com.amazonaws.Request
    public void a(boolean z) {
        this.b = z;
    }
}
