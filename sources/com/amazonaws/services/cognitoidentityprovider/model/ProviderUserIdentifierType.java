package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ProviderUserIdentifierType implements Serializable {
    private String a;
    private String b;
    private String c;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public ProviderUserIdentifierType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public ProviderUserIdentifierType d(String str) {
        this.b = str;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public ProviderUserIdentifierType f(String str) {
        this.c = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("ProviderName: " + a() + ",");
        }
        if (b() != null) {
            sb.append("ProviderAttributeName: " + b() + ",");
        }
        if (c() != null) {
            sb.append("ProviderAttributeValue: " + c());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() != null ? c().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ProviderUserIdentifierType)) {
            return false;
        }
        ProviderUserIdentifierType providerUserIdentifierType = (ProviderUserIdentifierType) obj;
        if ((providerUserIdentifierType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (providerUserIdentifierType.a() != null && !providerUserIdentifierType.a().equals(a())) {
            return false;
        }
        if ((providerUserIdentifierType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (providerUserIdentifierType.b() != null && !providerUserIdentifierType.b().equals(b())) {
            return false;
        }
        if ((providerUserIdentifierType.c() == null) ^ (c() == null)) {
            return false;
        }
        return providerUserIdentifierType.c() == null || providerUserIdentifierType.c().equals(c());
    }
}
