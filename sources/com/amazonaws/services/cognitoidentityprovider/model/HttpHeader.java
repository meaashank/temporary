package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class HttpHeader implements Serializable {
    private String a;
    private String b;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public HttpHeader b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public HttpHeader d(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("headerName: " + a() + ",");
        }
        if (b() != null) {
            sb.append("headerValue: " + b());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() != null ? b().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof HttpHeader)) {
            return false;
        }
        HttpHeader httpHeader = (HttpHeader) obj;
        if ((httpHeader.a() == null) ^ (a() == null)) {
            return false;
        }
        if (httpHeader.a() != null && !httpHeader.a().equals(a())) {
            return false;
        }
        if ((httpHeader.b() == null) ^ (b() == null)) {
            return false;
        }
        return httpHeader.b() == null || httpHeader.b().equals(b());
    }
}
