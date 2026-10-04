package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdminRespondToAuthChallengeRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;
    private Map<String, String> d;
    private String e;
    private AnalyticsMetadataType f;
    private ContextDataType g;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AdminRespondToAuthChallengeRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public AdminRespondToAuthChallengeRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public AdminRespondToAuthChallengeRequest f(String str) {
        this.c = str;
        return this;
    }

    public void a(ChallengeNameType challengeNameType) {
        this.c = challengeNameType.toString();
    }

    public AdminRespondToAuthChallengeRequest b(ChallengeNameType challengeNameType) {
        this.c = challengeNameType.toString();
        return this;
    }

    public Map<String, String> k() {
        return this.d;
    }

    public void a(Map<String, String> map) {
        this.d = map;
    }

    public AdminRespondToAuthChallengeRequest b(Map<String, String> map) {
        this.d = map;
        return this;
    }

    public AdminRespondToAuthChallengeRequest a(String str, String str2) {
        if (this.d == null) {
            this.d = new HashMap();
        }
        if (this.d.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.d.put(str, str2);
        return this;
    }

    public AdminRespondToAuthChallengeRequest l() {
        this.d = null;
        return this;
    }

    public String m() {
        return this.e;
    }

    public void g(String str) {
        this.e = str;
    }

    public AdminRespondToAuthChallengeRequest h(String str) {
        this.e = str;
        return this;
    }

    public AnalyticsMetadataType n() {
        return this.f;
    }

    public void a(AnalyticsMetadataType analyticsMetadataType) {
        this.f = analyticsMetadataType;
    }

    public AdminRespondToAuthChallengeRequest b(AnalyticsMetadataType analyticsMetadataType) {
        this.f = analyticsMetadataType;
        return this;
    }

    public ContextDataType o() {
        return this.g;
    }

    public void a(ContextDataType contextDataType) {
        this.g = contextDataType;
    }

    public AdminRespondToAuthChallengeRequest b(ContextDataType contextDataType) {
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
            sb.append("ChallengeName: " + j() + ",");
        }
        if (k() != null) {
            sb.append("ChallengeResponses: " + k() + ",");
        }
        if (m() != null) {
            sb.append("Session: " + m() + ",");
        }
        if (n() != null) {
            sb.append("AnalyticsMetadata: " + n() + ",");
        }
        if (o() != null) {
            sb.append("ContextData: " + o());
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
        if (obj == null || !(obj instanceof AdminRespondToAuthChallengeRequest)) {
            return false;
        }
        AdminRespondToAuthChallengeRequest adminRespondToAuthChallengeRequest = (AdminRespondToAuthChallengeRequest) obj;
        if ((adminRespondToAuthChallengeRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (adminRespondToAuthChallengeRequest.h() != null && !adminRespondToAuthChallengeRequest.h().equals(h())) {
            return false;
        }
        if ((adminRespondToAuthChallengeRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (adminRespondToAuthChallengeRequest.i() != null && !adminRespondToAuthChallengeRequest.i().equals(i())) {
            return false;
        }
        if ((adminRespondToAuthChallengeRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (adminRespondToAuthChallengeRequest.j() != null && !adminRespondToAuthChallengeRequest.j().equals(j())) {
            return false;
        }
        if ((adminRespondToAuthChallengeRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (adminRespondToAuthChallengeRequest.k() != null && !adminRespondToAuthChallengeRequest.k().equals(k())) {
            return false;
        }
        if ((adminRespondToAuthChallengeRequest.m() == null) ^ (m() == null)) {
            return false;
        }
        if (adminRespondToAuthChallengeRequest.m() != null && !adminRespondToAuthChallengeRequest.m().equals(m())) {
            return false;
        }
        if ((adminRespondToAuthChallengeRequest.n() == null) ^ (n() == null)) {
            return false;
        }
        if (adminRespondToAuthChallengeRequest.n() != null && !adminRespondToAuthChallengeRequest.n().equals(n())) {
            return false;
        }
        if ((adminRespondToAuthChallengeRequest.o() == null) ^ (o() == null)) {
            return false;
        }
        return adminRespondToAuthChallengeRequest.o() == null || adminRespondToAuthChallengeRequest.o().equals(o());
    }
}
