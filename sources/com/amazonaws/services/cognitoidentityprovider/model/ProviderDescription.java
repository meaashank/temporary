package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class ProviderDescription implements Serializable {
    private String a;
    private String b;
    private Date c;
    private Date d;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public ProviderDescription b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public ProviderDescription d(String str) {
        this.b = str;
        return this;
    }

    public void a(IdentityProviderTypeType identityProviderTypeType) {
        this.b = identityProviderTypeType.toString();
    }

    public ProviderDescription b(IdentityProviderTypeType identityProviderTypeType) {
        this.b = identityProviderTypeType.toString();
        return this;
    }

    public Date c() {
        return this.c;
    }

    public void a(Date date) {
        this.c = date;
    }

    public ProviderDescription b(Date date) {
        this.c = date;
        return this;
    }

    public Date d() {
        return this.d;
    }

    public void c(Date date) {
        this.d = date;
    }

    public ProviderDescription d(Date date) {
        this.d = date;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("ProviderName: " + a() + ",");
        }
        if (b() != null) {
            sb.append("ProviderType: " + b() + ",");
        }
        if (c() != null) {
            sb.append("LastModifiedDate: " + c() + ",");
        }
        if (d() != null) {
            sb.append("CreationDate: " + d());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() != null ? d().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ProviderDescription)) {
            return false;
        }
        ProviderDescription providerDescription = (ProviderDescription) obj;
        if ((providerDescription.a() == null) ^ (a() == null)) {
            return false;
        }
        if (providerDescription.a() != null && !providerDescription.a().equals(a())) {
            return false;
        }
        if ((providerDescription.b() == null) ^ (b() == null)) {
            return false;
        }
        if (providerDescription.b() != null && !providerDescription.b().equals(b())) {
            return false;
        }
        if ((providerDescription.c() == null) ^ (c() == null)) {
            return false;
        }
        if (providerDescription.c() != null && !providerDescription.c().equals(c())) {
            return false;
        }
        if ((providerDescription.d() == null) ^ (d() == null)) {
            return false;
        }
        return providerDescription.d() == null || providerDescription.d().equals(d());
    }
}
