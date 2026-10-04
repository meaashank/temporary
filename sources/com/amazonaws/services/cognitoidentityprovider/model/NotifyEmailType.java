package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class NotifyEmailType implements Serializable {
    private String a;
    private String b;
    private String c;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public NotifyEmailType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public NotifyEmailType d(String str) {
        this.b = str;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public NotifyEmailType f(String str) {
        this.c = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("Subject: " + a() + ",");
        }
        if (b() != null) {
            sb.append("HtmlBody: " + b() + ",");
        }
        if (c() != null) {
            sb.append("TextBody: " + c());
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
        if (obj == null || !(obj instanceof NotifyEmailType)) {
            return false;
        }
        NotifyEmailType notifyEmailType = (NotifyEmailType) obj;
        if ((notifyEmailType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (notifyEmailType.a() != null && !notifyEmailType.a().equals(a())) {
            return false;
        }
        if ((notifyEmailType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (notifyEmailType.b() != null && !notifyEmailType.b().equals(b())) {
            return false;
        }
        if ((notifyEmailType.c() == null) ^ (c() == null)) {
            return false;
        }
        return notifyEmailType.c() == null || notifyEmailType.c().equals(c());
    }
}
