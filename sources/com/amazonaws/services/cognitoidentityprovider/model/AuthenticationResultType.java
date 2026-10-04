package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AuthenticationResultType implements Serializable {
    private String a;
    private Integer b;
    private String c;
    private String d;
    private String e;
    private NewDeviceMetadataType f;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AuthenticationResultType b(String str) {
        this.a = str;
        return this;
    }

    public Integer b() {
        return this.b;
    }

    public void a(Integer num) {
        this.b = num;
    }

    public AuthenticationResultType b(Integer num) {
        this.b = num;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void c(String str) {
        this.c = str;
    }

    public AuthenticationResultType d(String str) {
        this.c = str;
        return this;
    }

    public String d() {
        return this.d;
    }

    public void e(String str) {
        this.d = str;
    }

    public AuthenticationResultType f(String str) {
        this.d = str;
        return this;
    }

    public String e() {
        return this.e;
    }

    public void g(String str) {
        this.e = str;
    }

    public AuthenticationResultType h(String str) {
        this.e = str;
        return this;
    }

    public NewDeviceMetadataType f() {
        return this.f;
    }

    public void a(NewDeviceMetadataType newDeviceMetadataType) {
        this.f = newDeviceMetadataType;
    }

    public AuthenticationResultType b(NewDeviceMetadataType newDeviceMetadataType) {
        this.f = newDeviceMetadataType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("AccessToken: " + a() + ",");
        }
        if (b() != null) {
            sb.append("ExpiresIn: " + b() + ",");
        }
        if (c() != null) {
            sb.append("TokenType: " + c() + ",");
        }
        if (d() != null) {
            sb.append("RefreshToken: " + d() + ",");
        }
        if (e() != null) {
            sb.append("IdToken: " + e() + ",");
        }
        if (f() != null) {
            sb.append("NewDeviceMetadata: " + f());
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
        if (obj == null || !(obj instanceof AuthenticationResultType)) {
            return false;
        }
        AuthenticationResultType authenticationResultType = (AuthenticationResultType) obj;
        if ((authenticationResultType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (authenticationResultType.a() != null && !authenticationResultType.a().equals(a())) {
            return false;
        }
        if ((authenticationResultType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (authenticationResultType.b() != null && !authenticationResultType.b().equals(b())) {
            return false;
        }
        if ((authenticationResultType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (authenticationResultType.c() != null && !authenticationResultType.c().equals(c())) {
            return false;
        }
        if ((authenticationResultType.d() == null) ^ (d() == null)) {
            return false;
        }
        if (authenticationResultType.d() != null && !authenticationResultType.d().equals(d())) {
            return false;
        }
        if ((authenticationResultType.e() == null) ^ (e() == null)) {
            return false;
        }
        if (authenticationResultType.e() != null && !authenticationResultType.e().equals(e())) {
            return false;
        }
        if ((authenticationResultType.f() == null) ^ (f() == null)) {
            return false;
        }
        return authenticationResultType.f() == null || authenticationResultType.f().equals(f());
    }
}
