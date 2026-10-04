package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class UserPoolDescriptionType implements Serializable {
    private String a;
    private String b;
    private LambdaConfigType c;
    private String d;
    private Date e;
    private Date f;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UserPoolDescriptionType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public UserPoolDescriptionType d(String str) {
        this.b = str;
        return this;
    }

    public LambdaConfigType c() {
        return this.c;
    }

    public void a(LambdaConfigType lambdaConfigType) {
        this.c = lambdaConfigType;
    }

    public UserPoolDescriptionType b(LambdaConfigType lambdaConfigType) {
        this.c = lambdaConfigType;
        return this;
    }

    public String d() {
        return this.d;
    }

    public void e(String str) {
        this.d = str;
    }

    public UserPoolDescriptionType f(String str) {
        this.d = str;
        return this;
    }

    public void a(StatusType statusType) {
        this.d = statusType.toString();
    }

    public UserPoolDescriptionType b(StatusType statusType) {
        this.d = statusType.toString();
        return this;
    }

    public Date e() {
        return this.e;
    }

    public void a(Date date) {
        this.e = date;
    }

    public UserPoolDescriptionType b(Date date) {
        this.e = date;
        return this;
    }

    public Date f() {
        return this.f;
    }

    public void c(Date date) {
        this.f = date;
    }

    public UserPoolDescriptionType d(Date date) {
        this.f = date;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("Id: " + a() + ",");
        }
        if (b() != null) {
            sb.append("Name: " + b() + ",");
        }
        if (c() != null) {
            sb.append("LambdaConfig: " + c() + ",");
        }
        if (d() != null) {
            sb.append("Status: " + d() + ",");
        }
        if (e() != null) {
            sb.append("LastModifiedDate: " + e() + ",");
        }
        if (f() != null) {
            sb.append("CreationDate: " + f());
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
        if (obj == null || !(obj instanceof UserPoolDescriptionType)) {
            return false;
        }
        UserPoolDescriptionType userPoolDescriptionType = (UserPoolDescriptionType) obj;
        if ((userPoolDescriptionType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (userPoolDescriptionType.a() != null && !userPoolDescriptionType.a().equals(a())) {
            return false;
        }
        if ((userPoolDescriptionType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (userPoolDescriptionType.b() != null && !userPoolDescriptionType.b().equals(b())) {
            return false;
        }
        if ((userPoolDescriptionType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (userPoolDescriptionType.c() != null && !userPoolDescriptionType.c().equals(c())) {
            return false;
        }
        if ((userPoolDescriptionType.d() == null) ^ (d() == null)) {
            return false;
        }
        if (userPoolDescriptionType.d() != null && !userPoolDescriptionType.d().equals(d())) {
            return false;
        }
        if ((userPoolDescriptionType.e() == null) ^ (e() == null)) {
            return false;
        }
        if (userPoolDescriptionType.e() != null && !userPoolDescriptionType.e().equals(e())) {
            return false;
        }
        if ((userPoolDescriptionType.f() == null) ^ (f() == null)) {
            return false;
        }
        return userPoolDescriptionType.f() == null || userPoolDescriptionType.f().equals(f());
    }
}
