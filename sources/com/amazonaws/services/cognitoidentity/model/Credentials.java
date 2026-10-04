package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class Credentials implements Serializable {
    private String a;
    private String b;
    private String c;
    private Date d;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public Credentials b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public Credentials d(String str) {
        this.b = str;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public Credentials f(String str) {
        this.c = str;
        return this;
    }

    public Date d() {
        return this.d;
    }

    public void a(Date date) {
        this.d = date;
    }

    public Credentials b(Date date) {
        this.d = date;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("AccessKeyId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("SecretKey: " + b() + ",");
        }
        if (c() != null) {
            sb.append("SessionToken: " + c() + ",");
        }
        if (d() != null) {
            sb.append("Expiration: " + d());
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
        if (obj == null || !(obj instanceof Credentials)) {
            return false;
        }
        Credentials credentials = (Credentials) obj;
        if ((credentials.a() == null) ^ (a() == null)) {
            return false;
        }
        if (credentials.a() != null && !credentials.a().equals(a())) {
            return false;
        }
        if ((credentials.b() == null) ^ (b() == null)) {
            return false;
        }
        if (credentials.b() != null && !credentials.b().equals(b())) {
            return false;
        }
        if ((credentials.c() == null) ^ (c() == null)) {
            return false;
        }
        if (credentials.c() != null && !credentials.c().equals(c())) {
            return false;
        }
        if ((credentials.d() == null) ^ (d() == null)) {
            return false;
        }
        return credentials.d() == null || credentials.d().equals(d());
    }
}
