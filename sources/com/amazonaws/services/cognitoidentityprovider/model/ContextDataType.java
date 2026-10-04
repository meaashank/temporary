package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ContextDataType implements Serializable {
    private String a;
    private String b;
    private String c;
    private List<HttpHeader> d;
    private String e;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public ContextDataType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public ContextDataType d(String str) {
        this.b = str;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public ContextDataType f(String str) {
        this.c = str;
        return this;
    }

    public List<HttpHeader> d() {
        return this.d;
    }

    public void a(Collection<HttpHeader> collection) {
        if (collection == null) {
            this.d = null;
        } else {
            this.d = new ArrayList(collection);
        }
    }

    public ContextDataType a(HttpHeader... httpHeaderArr) {
        if (d() == null) {
            this.d = new ArrayList(httpHeaderArr.length);
        }
        for (HttpHeader httpHeader : httpHeaderArr) {
            this.d.add(httpHeader);
        }
        return this;
    }

    public ContextDataType b(Collection<HttpHeader> collection) {
        a(collection);
        return this;
    }

    public String e() {
        return this.e;
    }

    public void g(String str) {
        this.e = str;
    }

    public ContextDataType h(String str) {
        this.e = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("IpAddress: " + a() + ",");
        }
        if (b() != null) {
            sb.append("ServerName: " + b() + ",");
        }
        if (c() != null) {
            sb.append("ServerPath: " + c() + ",");
        }
        if (d() != null) {
            sb.append("HttpHeaders: " + d() + ",");
        }
        if (e() != null) {
            sb.append("EncodedData: " + e());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() == null ? 0 : d().hashCode())) * 31) + (e() != null ? e().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ContextDataType)) {
            return false;
        }
        ContextDataType contextDataType = (ContextDataType) obj;
        if ((contextDataType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (contextDataType.a() != null && !contextDataType.a().equals(a())) {
            return false;
        }
        if ((contextDataType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (contextDataType.b() != null && !contextDataType.b().equals(b())) {
            return false;
        }
        if ((contextDataType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (contextDataType.c() != null && !contextDataType.c().equals(c())) {
            return false;
        }
        if ((contextDataType.d() == null) ^ (d() == null)) {
            return false;
        }
        if (contextDataType.d() != null && !contextDataType.d().equals(d())) {
            return false;
        }
        if ((contextDataType.e() == null) ^ (e() == null)) {
            return false;
        }
        return contextDataType.e() == null || contextDataType.e().equals(e());
    }
}
