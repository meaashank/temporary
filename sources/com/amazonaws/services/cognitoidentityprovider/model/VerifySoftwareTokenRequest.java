package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class VerifySoftwareTokenRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;
    private String d;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public VerifySoftwareTokenRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public VerifySoftwareTokenRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public VerifySoftwareTokenRequest f(String str) {
        this.c = str;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public VerifySoftwareTokenRequest h(String str) {
        this.d = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("AccessToken: " + h() + ",");
        }
        if (i() != null) {
            sb.append("Session: " + i() + ",");
        }
        if (j() != null) {
            sb.append("UserCode: " + j() + ",");
        }
        if (k() != null) {
            sb.append("FriendlyDeviceName: " + k());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() != null ? k().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof VerifySoftwareTokenRequest)) {
            return false;
        }
        VerifySoftwareTokenRequest verifySoftwareTokenRequest = (VerifySoftwareTokenRequest) obj;
        if ((verifySoftwareTokenRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (verifySoftwareTokenRequest.h() != null && !verifySoftwareTokenRequest.h().equals(h())) {
            return false;
        }
        if ((verifySoftwareTokenRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (verifySoftwareTokenRequest.i() != null && !verifySoftwareTokenRequest.i().equals(i())) {
            return false;
        }
        if ((verifySoftwareTokenRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (verifySoftwareTokenRequest.j() != null && !verifySoftwareTokenRequest.j().equals(j())) {
            return false;
        }
        if ((verifySoftwareTokenRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        return verifySoftwareTokenRequest.k() == null || verifySoftwareTokenRequest.k().equals(k());
    }
}
