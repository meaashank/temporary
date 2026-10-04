package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class CognitoIdentityProvider implements Serializable {
    private String a;
    private String b;
    private Boolean c;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public CognitoIdentityProvider b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public CognitoIdentityProvider d(String str) {
        this.b = str;
        return this;
    }

    public Boolean c() {
        return this.c;
    }

    public Boolean d() {
        return this.c;
    }

    public void a(Boolean bool) {
        this.c = bool;
    }

    public CognitoIdentityProvider b(Boolean bool) {
        this.c = bool;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("ProviderName: " + a() + ",");
        }
        if (b() != null) {
            sb.append("ClientId: " + b() + ",");
        }
        if (d() != null) {
            sb.append("ServerSideTokenCheck: " + d());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (d() != null ? d().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CognitoIdentityProvider)) {
            return false;
        }
        CognitoIdentityProvider cognitoIdentityProvider = (CognitoIdentityProvider) obj;
        if ((cognitoIdentityProvider.a() == null) ^ (a() == null)) {
            return false;
        }
        if (cognitoIdentityProvider.a() != null && !cognitoIdentityProvider.a().equals(a())) {
            return false;
        }
        if ((cognitoIdentityProvider.b() == null) ^ (b() == null)) {
            return false;
        }
        if (cognitoIdentityProvider.b() != null && !cognitoIdentityProvider.b().equals(b())) {
            return false;
        }
        if ((cognitoIdentityProvider.d() == null) ^ (d() == null)) {
            return false;
        }
        return cognitoIdentityProvider.d() == null || cognitoIdentityProvider.d().equals(d());
    }
}
