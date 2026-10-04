package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class DomainDescriptionType implements Serializable {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private CustomDomainConfigType h;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public DomainDescriptionType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public DomainDescriptionType d(String str) {
        this.b = str;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public DomainDescriptionType f(String str) {
        this.c = str;
        return this;
    }

    public String d() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public DomainDescriptionType h(String str) {
        this.d = str;
        return this;
    }

    public String e() {
        return this.e;
    }

    public void i(String str) {
        this.e = str;
    }

    public DomainDescriptionType j(String str) {
        this.e = str;
        return this;
    }

    public String f() {
        return this.f;
    }

    public void k(String str) {
        this.f = str;
    }

    public DomainDescriptionType l(String str) {
        this.f = str;
        return this;
    }

    public String g() {
        return this.g;
    }

    public void m(String str) {
        this.g = str;
    }

    public DomainDescriptionType n(String str) {
        this.g = str;
        return this;
    }

    public void a(DomainStatusType domainStatusType) {
        this.g = domainStatusType.toString();
    }

    public DomainDescriptionType b(DomainStatusType domainStatusType) {
        this.g = domainStatusType.toString();
        return this;
    }

    public CustomDomainConfigType h() {
        return this.h;
    }

    public void a(CustomDomainConfigType customDomainConfigType) {
        this.h = customDomainConfigType;
    }

    public DomainDescriptionType b(CustomDomainConfigType customDomainConfigType) {
        this.h = customDomainConfigType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("UserPoolId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("AWSAccountId: " + b() + ",");
        }
        if (c() != null) {
            sb.append("Domain: " + c() + ",");
        }
        if (d() != null) {
            sb.append("S3Bucket: " + d() + ",");
        }
        if (e() != null) {
            sb.append("CloudFrontDistribution: " + e() + ",");
        }
        if (f() != null) {
            sb.append("Version: " + f() + ",");
        }
        if (g() != null) {
            sb.append("Status: " + g() + ",");
        }
        if (h() != null) {
            sb.append("CustomDomainConfig: " + h());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() == null ? 0 : d().hashCode())) * 31) + (e() == null ? 0 : e().hashCode())) * 31) + (f() == null ? 0 : f().hashCode())) * 31) + (g() == null ? 0 : g().hashCode())) * 31) + (h() != null ? h().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DomainDescriptionType)) {
            return false;
        }
        DomainDescriptionType domainDescriptionType = (DomainDescriptionType) obj;
        if ((domainDescriptionType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (domainDescriptionType.a() != null && !domainDescriptionType.a().equals(a())) {
            return false;
        }
        if ((domainDescriptionType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (domainDescriptionType.b() != null && !domainDescriptionType.b().equals(b())) {
            return false;
        }
        if ((domainDescriptionType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (domainDescriptionType.c() != null && !domainDescriptionType.c().equals(c())) {
            return false;
        }
        if ((domainDescriptionType.d() == null) ^ (d() == null)) {
            return false;
        }
        if (domainDescriptionType.d() != null && !domainDescriptionType.d().equals(d())) {
            return false;
        }
        if ((domainDescriptionType.e() == null) ^ (e() == null)) {
            return false;
        }
        if (domainDescriptionType.e() != null && !domainDescriptionType.e().equals(e())) {
            return false;
        }
        if ((domainDescriptionType.f() == null) ^ (f() == null)) {
            return false;
        }
        if (domainDescriptionType.f() != null && !domainDescriptionType.f().equals(f())) {
            return false;
        }
        if ((domainDescriptionType.g() == null) ^ (g() == null)) {
            return false;
        }
        if (domainDescriptionType.g() != null && !domainDescriptionType.g().equals(g())) {
            return false;
        }
        if ((domainDescriptionType.h() == null) ^ (h() == null)) {
            return false;
        }
        return domainDescriptionType.h() == null || domainDescriptionType.h().equals(h());
    }
}
