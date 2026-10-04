package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ConfirmForgotPasswordRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private AnalyticsMetadataType f;
    private UserContextDataType g;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public ConfirmForgotPasswordRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public ConfirmForgotPasswordRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public ConfirmForgotPasswordRequest f(String str) {
        this.c = str;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public ConfirmForgotPasswordRequest h(String str) {
        this.d = str;
        return this;
    }

    public String l() {
        return this.e;
    }

    public void i(String str) {
        this.e = str;
    }

    public ConfirmForgotPasswordRequest j(String str) {
        this.e = str;
        return this;
    }

    public AnalyticsMetadataType m() {
        return this.f;
    }

    public void a(AnalyticsMetadataType analyticsMetadataType) {
        this.f = analyticsMetadataType;
    }

    public ConfirmForgotPasswordRequest b(AnalyticsMetadataType analyticsMetadataType) {
        this.f = analyticsMetadataType;
        return this;
    }

    public UserContextDataType n() {
        return this.g;
    }

    public void a(UserContextDataType userContextDataType) {
        this.g = userContextDataType;
    }

    public ConfirmForgotPasswordRequest b(UserContextDataType userContextDataType) {
        this.g = userContextDataType;
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
            sb.append("Username: " + j() + ",");
        }
        if (k() != null) {
            sb.append("ConfirmationCode: " + k() + ",");
        }
        if (l() != null) {
            sb.append("Password: " + l() + ",");
        }
        if (m() != null) {
            sb.append("AnalyticsMetadata: " + m() + ",");
        }
        if (n() != null) {
            sb.append("UserContextData: " + n());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (l() == null ? 0 : l().hashCode())) * 31) + (m() == null ? 0 : m().hashCode())) * 31) + (n() != null ? n().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ConfirmForgotPasswordRequest)) {
            return false;
        }
        ConfirmForgotPasswordRequest confirmForgotPasswordRequest = (ConfirmForgotPasswordRequest) obj;
        if ((confirmForgotPasswordRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (confirmForgotPasswordRequest.h() != null && !confirmForgotPasswordRequest.h().equals(h())) {
            return false;
        }
        if ((confirmForgotPasswordRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (confirmForgotPasswordRequest.i() != null && !confirmForgotPasswordRequest.i().equals(i())) {
            return false;
        }
        if ((confirmForgotPasswordRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (confirmForgotPasswordRequest.j() != null && !confirmForgotPasswordRequest.j().equals(j())) {
            return false;
        }
        if ((confirmForgotPasswordRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (confirmForgotPasswordRequest.k() != null && !confirmForgotPasswordRequest.k().equals(k())) {
            return false;
        }
        if ((confirmForgotPasswordRequest.l() == null) ^ (l() == null)) {
            return false;
        }
        if (confirmForgotPasswordRequest.l() != null && !confirmForgotPasswordRequest.l().equals(l())) {
            return false;
        }
        if ((confirmForgotPasswordRequest.m() == null) ^ (m() == null)) {
            return false;
        }
        if (confirmForgotPasswordRequest.m() != null && !confirmForgotPasswordRequest.m().equals(m())) {
            return false;
        }
        if ((confirmForgotPasswordRequest.n() == null) ^ (n() == null)) {
            return false;
        }
        return confirmForgotPasswordRequest.n() == null || confirmForgotPasswordRequest.n().equals(n());
    }
}
