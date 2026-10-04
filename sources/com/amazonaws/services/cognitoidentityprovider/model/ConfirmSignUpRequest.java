package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ConfirmSignUpRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;
    private String d;
    private Boolean e;
    private AnalyticsMetadataType f;
    private UserContextDataType g;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public ConfirmSignUpRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public ConfirmSignUpRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public ConfirmSignUpRequest f(String str) {
        this.c = str;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public ConfirmSignUpRequest h(String str) {
        this.d = str;
        return this;
    }

    public Boolean l() {
        return this.e;
    }

    public Boolean m() {
        return this.e;
    }

    public void a(Boolean bool) {
        this.e = bool;
    }

    public ConfirmSignUpRequest b(Boolean bool) {
        this.e = bool;
        return this;
    }

    public AnalyticsMetadataType n() {
        return this.f;
    }

    public void a(AnalyticsMetadataType analyticsMetadataType) {
        this.f = analyticsMetadataType;
    }

    public ConfirmSignUpRequest b(AnalyticsMetadataType analyticsMetadataType) {
        this.f = analyticsMetadataType;
        return this;
    }

    public UserContextDataType o() {
        return this.g;
    }

    public void a(UserContextDataType userContextDataType) {
        this.g = userContextDataType;
    }

    public ConfirmSignUpRequest b(UserContextDataType userContextDataType) {
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
        if (m() != null) {
            sb.append("ForceAliasCreation: " + m() + ",");
        }
        if (n() != null) {
            sb.append("AnalyticsMetadata: " + n() + ",");
        }
        if (o() != null) {
            sb.append("UserContextData: " + o());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (m() == null ? 0 : m().hashCode())) * 31) + (n() == null ? 0 : n().hashCode())) * 31) + (o() != null ? o().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ConfirmSignUpRequest)) {
            return false;
        }
        ConfirmSignUpRequest confirmSignUpRequest = (ConfirmSignUpRequest) obj;
        if ((confirmSignUpRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (confirmSignUpRequest.h() != null && !confirmSignUpRequest.h().equals(h())) {
            return false;
        }
        if ((confirmSignUpRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (confirmSignUpRequest.i() != null && !confirmSignUpRequest.i().equals(i())) {
            return false;
        }
        if ((confirmSignUpRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (confirmSignUpRequest.j() != null && !confirmSignUpRequest.j().equals(j())) {
            return false;
        }
        if ((confirmSignUpRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (confirmSignUpRequest.k() != null && !confirmSignUpRequest.k().equals(k())) {
            return false;
        }
        if ((confirmSignUpRequest.m() == null) ^ (m() == null)) {
            return false;
        }
        if (confirmSignUpRequest.m() != null && !confirmSignUpRequest.m().equals(m())) {
            return false;
        }
        if ((confirmSignUpRequest.n() == null) ^ (n() == null)) {
            return false;
        }
        if (confirmSignUpRequest.n() != null && !confirmSignUpRequest.n().equals(n())) {
            return false;
        }
        if ((confirmSignUpRequest.o() == null) ^ (o() == null)) {
            return false;
        }
        return confirmSignUpRequest.o() == null || confirmSignUpRequest.o().equals(o());
    }
}
