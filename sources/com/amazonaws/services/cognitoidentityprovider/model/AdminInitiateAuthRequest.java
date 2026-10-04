package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdminInitiateAuthRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;
    private Map<String, String> d;
    private Map<String, String> e;
    private AnalyticsMetadataType f;
    private ContextDataType g;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AdminInitiateAuthRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public AdminInitiateAuthRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public AdminInitiateAuthRequest f(String str) {
        this.c = str;
        return this;
    }

    public void a(AuthFlowType authFlowType) {
        this.c = authFlowType.toString();
    }

    public AdminInitiateAuthRequest b(AuthFlowType authFlowType) {
        this.c = authFlowType.toString();
        return this;
    }

    public Map<String, String> k() {
        return this.d;
    }

    public void a(Map<String, String> map) {
        this.d = map;
    }

    public AdminInitiateAuthRequest b(Map<String, String> map) {
        this.d = map;
        return this;
    }

    public AdminInitiateAuthRequest a(String str, String str2) {
        if (this.d == null) {
            this.d = new HashMap();
        }
        if (this.d.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.d.put(str, str2);
        return this;
    }

    public AdminInitiateAuthRequest l() {
        this.d = null;
        return this;
    }

    public Map<String, String> m() {
        return this.e;
    }

    public void c(Map<String, String> map) {
        this.e = map;
    }

    public AdminInitiateAuthRequest d(Map<String, String> map) {
        this.e = map;
        return this;
    }

    public AdminInitiateAuthRequest b(String str, String str2) {
        if (this.e == null) {
            this.e = new HashMap();
        }
        if (this.e.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.e.put(str, str2);
        return this;
    }

    public AdminInitiateAuthRequest n() {
        this.e = null;
        return this;
    }

    public AnalyticsMetadataType o() {
        return this.f;
    }

    public void a(AnalyticsMetadataType analyticsMetadataType) {
        this.f = analyticsMetadataType;
    }

    public AdminInitiateAuthRequest b(AnalyticsMetadataType analyticsMetadataType) {
        this.f = analyticsMetadataType;
        return this;
    }

    public ContextDataType p() {
        return this.g;
    }

    public void a(ContextDataType contextDataType) {
        this.g = contextDataType;
    }

    public AdminInitiateAuthRequest b(ContextDataType contextDataType) {
        this.g = contextDataType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("ClientId: " + i() + ",");
        }
        if (j() != null) {
            sb.append("AuthFlow: " + j() + ",");
        }
        if (k() != null) {
            sb.append("AuthParameters: " + k() + ",");
        }
        if (m() != null) {
            sb.append("ClientMetadata: " + m() + ",");
        }
        if (o() != null) {
            sb.append("AnalyticsMetadata: " + o() + ",");
        }
        if (p() != null) {
            sb.append("ContextData: " + p());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (m() == null ? 0 : m().hashCode())) * 31) + (o() == null ? 0 : o().hashCode())) * 31) + (p() != null ? p().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AdminInitiateAuthRequest)) {
            return false;
        }
        AdminInitiateAuthRequest adminInitiateAuthRequest = (AdminInitiateAuthRequest) obj;
        if ((adminInitiateAuthRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (adminInitiateAuthRequest.h() != null && !adminInitiateAuthRequest.h().equals(h())) {
            return false;
        }
        if ((adminInitiateAuthRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (adminInitiateAuthRequest.i() != null && !adminInitiateAuthRequest.i().equals(i())) {
            return false;
        }
        if ((adminInitiateAuthRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (adminInitiateAuthRequest.j() != null && !adminInitiateAuthRequest.j().equals(j())) {
            return false;
        }
        if ((adminInitiateAuthRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (adminInitiateAuthRequest.k() != null && !adminInitiateAuthRequest.k().equals(k())) {
            return false;
        }
        if ((adminInitiateAuthRequest.m() == null) ^ (m() == null)) {
            return false;
        }
        if (adminInitiateAuthRequest.m() != null && !adminInitiateAuthRequest.m().equals(m())) {
            return false;
        }
        if ((adminInitiateAuthRequest.o() == null) ^ (o() == null)) {
            return false;
        }
        if (adminInitiateAuthRequest.o() != null && !adminInitiateAuthRequest.o().equals(o())) {
            return false;
        }
        if ((adminInitiateAuthRequest.p() == null) ^ (p() == null)) {
            return false;
        }
        return adminInitiateAuthRequest.p() == null || adminInitiateAuthRequest.p().equals(p());
    }
}
