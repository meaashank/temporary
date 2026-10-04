package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class VerifyUserAttributeRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public VerifyUserAttributeRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public VerifyUserAttributeRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public VerifyUserAttributeRequest f(String str) {
        this.c = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("AccessToken: " + h() + ",");
        }
        if (i() != null) {
            sb.append("AttributeName: " + i() + ",");
        }
        if (j() != null) {
            sb.append("Code: " + j());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() != null ? j().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof VerifyUserAttributeRequest)) {
            return false;
        }
        VerifyUserAttributeRequest verifyUserAttributeRequest = (VerifyUserAttributeRequest) obj;
        if ((verifyUserAttributeRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (verifyUserAttributeRequest.h() != null && !verifyUserAttributeRequest.h().equals(h())) {
            return false;
        }
        if ((verifyUserAttributeRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (verifyUserAttributeRequest.i() != null && !verifyUserAttributeRequest.i().equals(i())) {
            return false;
        }
        if ((verifyUserAttributeRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        return verifyUserAttributeRequest.j() == null || verifyUserAttributeRequest.j().equals(j());
    }
}
