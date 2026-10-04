package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class UserPoolClientDescription implements Serializable {
    private String a;
    private String b;
    private String c;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UserPoolClientDescription b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public UserPoolClientDescription d(String str) {
        this.b = str;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public UserPoolClientDescription f(String str) {
        this.c = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("ClientId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("UserPoolId: " + b() + ",");
        }
        if (c() != null) {
            sb.append("ClientName: " + c());
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
        if (obj == null || !(obj instanceof UserPoolClientDescription)) {
            return false;
        }
        UserPoolClientDescription userPoolClientDescription = (UserPoolClientDescription) obj;
        if ((userPoolClientDescription.a() == null) ^ (a() == null)) {
            return false;
        }
        if (userPoolClientDescription.a() != null && !userPoolClientDescription.a().equals(a())) {
            return false;
        }
        if ((userPoolClientDescription.b() == null) ^ (b() == null)) {
            return false;
        }
        if (userPoolClientDescription.b() != null && !userPoolClientDescription.b().equals(b())) {
            return false;
        }
        if ((userPoolClientDescription.c() == null) ^ (c() == null)) {
            return false;
        }
        return userPoolClientDescription.c() == null || userPoolClientDescription.c().equals(c());
    }
}
