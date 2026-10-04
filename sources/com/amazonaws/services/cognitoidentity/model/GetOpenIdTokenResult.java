package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class GetOpenIdTokenResult implements Serializable {
    private String a;
    private String b;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public GetOpenIdTokenResult b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public GetOpenIdTokenResult d(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("IdentityId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("Token: " + b());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() != null ? b().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetOpenIdTokenResult)) {
            return false;
        }
        GetOpenIdTokenResult getOpenIdTokenResult = (GetOpenIdTokenResult) obj;
        if ((getOpenIdTokenResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (getOpenIdTokenResult.a() != null && !getOpenIdTokenResult.a().equals(a())) {
            return false;
        }
        if ((getOpenIdTokenResult.b() == null) ^ (b() == null)) {
            return false;
        }
        return getOpenIdTokenResult.b() == null || getOpenIdTokenResult.b().equals(b());
    }
}
