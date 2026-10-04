package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class GetUserAttributeVerificationCodeRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public GetUserAttributeVerificationCodeRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public GetUserAttributeVerificationCodeRequest d(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("AccessToken: " + h() + ",");
        }
        if (i() != null) {
            sb.append("AttributeName: " + i());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() != null ? i().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetUserAttributeVerificationCodeRequest)) {
            return false;
        }
        GetUserAttributeVerificationCodeRequest getUserAttributeVerificationCodeRequest = (GetUserAttributeVerificationCodeRequest) obj;
        if ((getUserAttributeVerificationCodeRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (getUserAttributeVerificationCodeRequest.h() != null && !getUserAttributeVerificationCodeRequest.h().equals(h())) {
            return false;
        }
        if ((getUserAttributeVerificationCodeRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        return getUserAttributeVerificationCodeRequest.i() == null || getUserAttributeVerificationCodeRequest.i().equals(i());
    }
}
