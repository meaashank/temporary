package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class InitiateAuthRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private Map<String, String> b;
    private Map<String, String> c;
    private String d;
    private AnalyticsMetadataType e;
    private UserContextDataType f;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public InitiateAuthRequest b(String str) {
        this.a = str;
        return this;
    }

    public void a(AuthFlowType authFlowType) {
        this.a = authFlowType.toString();
    }

    public InitiateAuthRequest b(AuthFlowType authFlowType) {
        this.a = authFlowType.toString();
        return this;
    }

    public Map<String, String> i() {
        return this.b;
    }

    public void a(Map<String, String> map) {
        this.b = map;
    }

    public InitiateAuthRequest b(Map<String, String> map) {
        this.b = map;
        return this;
    }

    public InitiateAuthRequest a(String str, String str2) {
        if (this.b == null) {
            this.b = new HashMap();
        }
        if (this.b.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.b.put(str, str2);
        return this;
    }

    public InitiateAuthRequest j() {
        this.b = null;
        return this;
    }

    public Map<String, String> k() {
        return this.c;
    }

    public void c(Map<String, String> map) {
        this.c = map;
    }

    public InitiateAuthRequest d(Map<String, String> map) {
        this.c = map;
        return this;
    }

    public InitiateAuthRequest b(String str, String str2) {
        if (this.c == null) {
            this.c = new HashMap();
        }
        if (this.c.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.c.put(str, str2);
        return this;
    }

    public InitiateAuthRequest l() {
        this.c = null;
        return this;
    }

    public String m() {
        return this.d;
    }

    public void c(String str) {
        this.d = str;
    }

    public InitiateAuthRequest d(String str) {
        this.d = str;
        return this;
    }

    public AnalyticsMetadataType n() {
        return this.e;
    }

    public void a(AnalyticsMetadataType analyticsMetadataType) {
        this.e = analyticsMetadataType;
    }

    public InitiateAuthRequest b(AnalyticsMetadataType analyticsMetadataType) {
        this.e = analyticsMetadataType;
        return this;
    }

    public UserContextDataType o() {
        return this.f;
    }

    public void a(UserContextDataType userContextDataType) {
        this.f = userContextDataType;
    }

    public InitiateAuthRequest b(UserContextDataType userContextDataType) {
        this.f = userContextDataType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("AuthFlow: " + h() + ",");
        }
        if (i() != null) {
            sb.append("AuthParameters: " + i() + ",");
        }
        if (k() != null) {
            sb.append("ClientMetadata: " + k() + ",");
        }
        if (m() != null) {
            sb.append("ClientId: " + m() + ",");
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
        return (((((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (m() == null ? 0 : m().hashCode())) * 31) + (n() == null ? 0 : n().hashCode())) * 31) + (o() != null ? o().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof InitiateAuthRequest)) {
            return false;
        }
        InitiateAuthRequest initiateAuthRequest = (InitiateAuthRequest) obj;
        if ((initiateAuthRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (initiateAuthRequest.h() != null && !initiateAuthRequest.h().equals(h())) {
            return false;
        }
        if ((initiateAuthRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (initiateAuthRequest.i() != null && !initiateAuthRequest.i().equals(i())) {
            return false;
        }
        if ((initiateAuthRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (initiateAuthRequest.k() != null && !initiateAuthRequest.k().equals(k())) {
            return false;
        }
        if ((initiateAuthRequest.m() == null) ^ (m() == null)) {
            return false;
        }
        if (initiateAuthRequest.m() != null && !initiateAuthRequest.m().equals(m())) {
            return false;
        }
        if ((initiateAuthRequest.n() == null) ^ (n() == null)) {
            return false;
        }
        if (initiateAuthRequest.n() != null && !initiateAuthRequest.n().equals(n())) {
            return false;
        }
        if ((initiateAuthRequest.o() == null) ^ (o() == null)) {
            return false;
        }
        return initiateAuthRequest.o() == null || initiateAuthRequest.o().equals(o());
    }
}
