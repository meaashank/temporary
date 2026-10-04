package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class NotifyConfigurationType implements Serializable {
    private String a;
    private String b;
    private String c;
    private NotifyEmailType d;
    private NotifyEmailType e;
    private NotifyEmailType f;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public NotifyConfigurationType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public NotifyConfigurationType d(String str) {
        this.b = str;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public NotifyConfigurationType f(String str) {
        this.c = str;
        return this;
    }

    public NotifyEmailType d() {
        return this.d;
    }

    public void a(NotifyEmailType notifyEmailType) {
        this.d = notifyEmailType;
    }

    public NotifyConfigurationType b(NotifyEmailType notifyEmailType) {
        this.d = notifyEmailType;
        return this;
    }

    public NotifyEmailType e() {
        return this.e;
    }

    public void c(NotifyEmailType notifyEmailType) {
        this.e = notifyEmailType;
    }

    public NotifyConfigurationType d(NotifyEmailType notifyEmailType) {
        this.e = notifyEmailType;
        return this;
    }

    public NotifyEmailType f() {
        return this.f;
    }

    public void e(NotifyEmailType notifyEmailType) {
        this.f = notifyEmailType;
    }

    public NotifyConfigurationType f(NotifyEmailType notifyEmailType) {
        this.f = notifyEmailType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("From: " + a() + ",");
        }
        if (b() != null) {
            sb.append("ReplyTo: " + b() + ",");
        }
        if (c() != null) {
            sb.append("SourceArn: " + c() + ",");
        }
        if (d() != null) {
            sb.append("BlockEmail: " + d() + ",");
        }
        if (e() != null) {
            sb.append("NoActionEmail: " + e() + ",");
        }
        if (f() != null) {
            sb.append("MfaEmail: " + f());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() == null ? 0 : d().hashCode())) * 31) + (e() == null ? 0 : e().hashCode())) * 31) + (f() != null ? f().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof NotifyConfigurationType)) {
            return false;
        }
        NotifyConfigurationType notifyConfigurationType = (NotifyConfigurationType) obj;
        if ((notifyConfigurationType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (notifyConfigurationType.a() != null && !notifyConfigurationType.a().equals(a())) {
            return false;
        }
        if ((notifyConfigurationType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (notifyConfigurationType.b() != null && !notifyConfigurationType.b().equals(b())) {
            return false;
        }
        if ((notifyConfigurationType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (notifyConfigurationType.c() != null && !notifyConfigurationType.c().equals(c())) {
            return false;
        }
        if ((notifyConfigurationType.d() == null) ^ (d() == null)) {
            return false;
        }
        if (notifyConfigurationType.d() != null && !notifyConfigurationType.d().equals(d())) {
            return false;
        }
        if ((notifyConfigurationType.e() == null) ^ (e() == null)) {
            return false;
        }
        if (notifyConfigurationType.e() != null && !notifyConfigurationType.e().equals(e())) {
            return false;
        }
        if ((notifyConfigurationType.f() == null) ^ (f() == null)) {
            return false;
        }
        return notifyConfigurationType.f() == null || notifyConfigurationType.f().equals(f());
    }
}
