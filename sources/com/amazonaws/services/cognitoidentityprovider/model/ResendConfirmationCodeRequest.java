package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ResendConfirmationCodeRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private UserContextDataType c;
    private String d;
    private AnalyticsMetadataType e;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public ResendConfirmationCodeRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public ResendConfirmationCodeRequest d(String str) {
        this.b = str;
        return this;
    }

    public UserContextDataType j() {
        return this.c;
    }

    public void a(UserContextDataType userContextDataType) {
        this.c = userContextDataType;
    }

    public ResendConfirmationCodeRequest b(UserContextDataType userContextDataType) {
        this.c = userContextDataType;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void e(String str) {
        this.d = str;
    }

    public ResendConfirmationCodeRequest f(String str) {
        this.d = str;
        return this;
    }

    public AnalyticsMetadataType l() {
        return this.e;
    }

    public void a(AnalyticsMetadataType analyticsMetadataType) {
        this.e = analyticsMetadataType;
    }

    public ResendConfirmationCodeRequest b(AnalyticsMetadataType analyticsMetadataType) {
        this.e = analyticsMetadataType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("ClientId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("SecretHash: " + i() + ",");
        }
        if (j() != null) {
            sb.append("UserContextData: " + j() + ",");
        }
        if (k() != null) {
            sb.append("Username: " + k() + ",");
        }
        if (l() != null) {
            sb.append("AnalyticsMetadata: " + l());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (l() != null ? l().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ResendConfirmationCodeRequest)) {
            return false;
        }
        ResendConfirmationCodeRequest resendConfirmationCodeRequest = (ResendConfirmationCodeRequest) obj;
        if ((resendConfirmationCodeRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (resendConfirmationCodeRequest.h() != null && !resendConfirmationCodeRequest.h().equals(h())) {
            return false;
        }
        if ((resendConfirmationCodeRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (resendConfirmationCodeRequest.i() != null && !resendConfirmationCodeRequest.i().equals(i())) {
            return false;
        }
        if ((resendConfirmationCodeRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (resendConfirmationCodeRequest.j() != null && !resendConfirmationCodeRequest.j().equals(j())) {
            return false;
        }
        if ((resendConfirmationCodeRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (resendConfirmationCodeRequest.k() != null && !resendConfirmationCodeRequest.k().equals(k())) {
            return false;
        }
        if ((resendConfirmationCodeRequest.l() == null) ^ (l() == null)) {
            return false;
        }
        return resendConfirmationCodeRequest.l() == null || resendConfirmationCodeRequest.l().equals(l());
    }
}
