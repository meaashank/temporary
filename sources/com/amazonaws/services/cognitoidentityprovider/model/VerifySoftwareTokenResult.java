package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class VerifySoftwareTokenResult implements Serializable {
    private String a;
    private String b;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public VerifySoftwareTokenResult b(String str) {
        this.a = str;
        return this;
    }

    public void a(VerifySoftwareTokenResponseType verifySoftwareTokenResponseType) {
        this.a = verifySoftwareTokenResponseType.toString();
    }

    public VerifySoftwareTokenResult b(VerifySoftwareTokenResponseType verifySoftwareTokenResponseType) {
        this.a = verifySoftwareTokenResponseType.toString();
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public VerifySoftwareTokenResult d(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("Status: " + a() + ",");
        }
        if (b() != null) {
            sb.append("Session: " + b());
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
        if (obj == null || !(obj instanceof VerifySoftwareTokenResult)) {
            return false;
        }
        VerifySoftwareTokenResult verifySoftwareTokenResult = (VerifySoftwareTokenResult) obj;
        if ((verifySoftwareTokenResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (verifySoftwareTokenResult.a() != null && !verifySoftwareTokenResult.a().equals(a())) {
            return false;
        }
        if ((verifySoftwareTokenResult.b() == null) ^ (b() == null)) {
            return false;
        }
        return verifySoftwareTokenResult.b() == null || verifySoftwareTokenResult.b().equals(b());
    }
}
