package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsConfigurationType implements Serializable {
    private String a;
    private String b;
    private String c;
    private Boolean d;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AnalyticsConfigurationType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public AnalyticsConfigurationType d(String str) {
        this.b = str;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public AnalyticsConfigurationType f(String str) {
        this.c = str;
        return this;
    }

    public Boolean d() {
        return this.d;
    }

    public Boolean e() {
        return this.d;
    }

    public void a(Boolean bool) {
        this.d = bool;
    }

    public AnalyticsConfigurationType b(Boolean bool) {
        this.d = bool;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("ApplicationId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("RoleArn: " + b() + ",");
        }
        if (c() != null) {
            sb.append("ExternalId: " + c() + ",");
        }
        if (e() != null) {
            sb.append("UserDataShared: " + e());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (e() != null ? e().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AnalyticsConfigurationType)) {
            return false;
        }
        AnalyticsConfigurationType analyticsConfigurationType = (AnalyticsConfigurationType) obj;
        if ((analyticsConfigurationType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (analyticsConfigurationType.a() != null && !analyticsConfigurationType.a().equals(a())) {
            return false;
        }
        if ((analyticsConfigurationType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (analyticsConfigurationType.b() != null && !analyticsConfigurationType.b().equals(b())) {
            return false;
        }
        if ((analyticsConfigurationType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (analyticsConfigurationType.c() != null && !analyticsConfigurationType.c().equals(c())) {
            return false;
        }
        if ((analyticsConfigurationType.e() == null) ^ (e() == null)) {
            return false;
        }
        return analyticsConfigurationType.e() == null || analyticsConfigurationType.e().equals(e());
    }
}
