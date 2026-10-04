package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SignUpRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;
    private String d;
    private List<AttributeType> e;
    private List<AttributeType> f;
    private AnalyticsMetadataType g;
    private UserContextDataType h;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public SignUpRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public SignUpRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public SignUpRequest f(String str) {
        this.c = str;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public SignUpRequest h(String str) {
        this.d = str;
        return this;
    }

    public List<AttributeType> l() {
        return this.e;
    }

    public void a(Collection<AttributeType> collection) {
        if (collection == null) {
            this.e = null;
        } else {
            this.e = new ArrayList(collection);
        }
    }

    public SignUpRequest a(AttributeType... attributeTypeArr) {
        if (l() == null) {
            this.e = new ArrayList(attributeTypeArr.length);
        }
        for (AttributeType attributeType : attributeTypeArr) {
            this.e.add(attributeType);
        }
        return this;
    }

    public SignUpRequest b(Collection<AttributeType> collection) {
        a(collection);
        return this;
    }

    public List<AttributeType> m() {
        return this.f;
    }

    public void c(Collection<AttributeType> collection) {
        if (collection == null) {
            this.f = null;
        } else {
            this.f = new ArrayList(collection);
        }
    }

    public SignUpRequest b(AttributeType... attributeTypeArr) {
        if (m() == null) {
            this.f = new ArrayList(attributeTypeArr.length);
        }
        for (AttributeType attributeType : attributeTypeArr) {
            this.f.add(attributeType);
        }
        return this;
    }

    public SignUpRequest d(Collection<AttributeType> collection) {
        c(collection);
        return this;
    }

    public AnalyticsMetadataType n() {
        return this.g;
    }

    public void a(AnalyticsMetadataType analyticsMetadataType) {
        this.g = analyticsMetadataType;
    }

    public SignUpRequest b(AnalyticsMetadataType analyticsMetadataType) {
        this.g = analyticsMetadataType;
        return this;
    }

    public UserContextDataType o() {
        return this.h;
    }

    public void a(UserContextDataType userContextDataType) {
        this.h = userContextDataType;
    }

    public SignUpRequest b(UserContextDataType userContextDataType) {
        this.h = userContextDataType;
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
            sb.append("Password: " + k() + ",");
        }
        if (l() != null) {
            sb.append("UserAttributes: " + l() + ",");
        }
        if (m() != null) {
            sb.append("ValidationData: " + m() + ",");
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
        return (((((((((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (l() == null ? 0 : l().hashCode())) * 31) + (m() == null ? 0 : m().hashCode())) * 31) + (n() == null ? 0 : n().hashCode())) * 31) + (o() != null ? o().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SignUpRequest)) {
            return false;
        }
        SignUpRequest signUpRequest = (SignUpRequest) obj;
        if ((signUpRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (signUpRequest.h() != null && !signUpRequest.h().equals(h())) {
            return false;
        }
        if ((signUpRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (signUpRequest.i() != null && !signUpRequest.i().equals(i())) {
            return false;
        }
        if ((signUpRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (signUpRequest.j() != null && !signUpRequest.j().equals(j())) {
            return false;
        }
        if ((signUpRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (signUpRequest.k() != null && !signUpRequest.k().equals(k())) {
            return false;
        }
        if ((signUpRequest.l() == null) ^ (l() == null)) {
            return false;
        }
        if (signUpRequest.l() != null && !signUpRequest.l().equals(l())) {
            return false;
        }
        if ((signUpRequest.m() == null) ^ (m() == null)) {
            return false;
        }
        if (signUpRequest.m() != null && !signUpRequest.m().equals(m())) {
            return false;
        }
        if ((signUpRequest.n() == null) ^ (n() == null)) {
            return false;
        }
        if (signUpRequest.n() != null && !signUpRequest.n().equals(n())) {
            return false;
        }
        if ((signUpRequest.o() == null) ^ (o() == null)) {
            return false;
        }
        return signUpRequest.o() == null || signUpRequest.o().equals(o());
    }
}
