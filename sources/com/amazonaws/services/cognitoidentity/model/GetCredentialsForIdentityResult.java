package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class GetCredentialsForIdentityResult implements Serializable {
    private String a;
    private Credentials b;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public GetCredentialsForIdentityResult b(String str) {
        this.a = str;
        return this;
    }

    public Credentials b() {
        return this.b;
    }

    public void a(Credentials credentials) {
        this.b = credentials;
    }

    public GetCredentialsForIdentityResult b(Credentials credentials) {
        this.b = credentials;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("IdentityId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("Credentials: " + b());
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
        if (obj == null || !(obj instanceof GetCredentialsForIdentityResult)) {
            return false;
        }
        GetCredentialsForIdentityResult getCredentialsForIdentityResult = (GetCredentialsForIdentityResult) obj;
        if ((getCredentialsForIdentityResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (getCredentialsForIdentityResult.a() != null && !getCredentialsForIdentityResult.a().equals(a())) {
            return false;
        }
        if ((getCredentialsForIdentityResult.b() == null) ^ (b() == null)) {
            return false;
        }
        return getCredentialsForIdentityResult.b() == null || getCredentialsForIdentityResult.b().equals(b());
    }
}
