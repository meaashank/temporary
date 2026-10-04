package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class GetOpenIdTokenForDeveloperIdentityResult implements Serializable {
    private String a;
    private String b;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public GetOpenIdTokenForDeveloperIdentityResult b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public GetOpenIdTokenForDeveloperIdentityResult d(String str) {
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
        if (obj == null || !(obj instanceof GetOpenIdTokenForDeveloperIdentityResult)) {
            return false;
        }
        GetOpenIdTokenForDeveloperIdentityResult getOpenIdTokenForDeveloperIdentityResult = (GetOpenIdTokenForDeveloperIdentityResult) obj;
        if ((getOpenIdTokenForDeveloperIdentityResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (getOpenIdTokenForDeveloperIdentityResult.a() != null && !getOpenIdTokenForDeveloperIdentityResult.a().equals(a())) {
            return false;
        }
        if ((getOpenIdTokenForDeveloperIdentityResult.b() == null) ^ (b() == null)) {
            return false;
        }
        return getOpenIdTokenForDeveloperIdentityResult.b() == null || getOpenIdTokenForDeveloperIdentityResult.b().equals(b());
    }
}
