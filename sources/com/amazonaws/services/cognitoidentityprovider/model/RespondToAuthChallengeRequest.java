package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class RespondToAuthChallengeRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;
    private Map<String, String> d;
    private AnalyticsMetadataType e;
    private UserContextDataType f;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public RespondToAuthChallengeRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public RespondToAuthChallengeRequest d(String str) {
        this.b = str;
        return this;
    }

    public void a(ChallengeNameType challengeNameType) {
        this.b = challengeNameType.toString();
    }

    public RespondToAuthChallengeRequest b(ChallengeNameType challengeNameType) {
        this.b = challengeNameType.toString();
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public RespondToAuthChallengeRequest f(String str) {
        this.c = str;
        return this;
    }

    public Map<String, String> k() {
        return this.d;
    }

    public void a(Map<String, String> map) {
        this.d = map;
    }

    public RespondToAuthChallengeRequest b(Map<String, String> map) {
        this.d = map;
        return this;
    }

    public RespondToAuthChallengeRequest a(String str, String str2) {
        if (this.d == null) {
            this.d = new HashMap();
        }
        if (this.d.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.d.put(str, str2);
        return this;
    }

    public RespondToAuthChallengeRequest l() {
        this.d = null;
        return this;
    }

    public AnalyticsMetadataType m() {
        return this.e;
    }

    public void a(AnalyticsMetadataType analyticsMetadataType) {
        this.e = analyticsMetadataType;
    }

    public RespondToAuthChallengeRequest b(AnalyticsMetadataType analyticsMetadataType) {
        this.e = analyticsMetadataType;
        return this;
    }

    public UserContextDataType n() {
        return this.f;
    }

    public void a(UserContextDataType userContextDataType) {
        this.f = userContextDataType;
    }

    public RespondToAuthChallengeRequest b(UserContextDataType userContextDataType) {
        this.f = userContextDataType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("ClientId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("ChallengeName: " + i() + ",");
        }
        if (j() != null) {
            sb.append("Session: " + j() + ",");
        }
        if (k() != null) {
            sb.append("ChallengeResponses: " + k() + ",");
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
        return (((((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (m() == null ? 0 : m().hashCode())) * 31) + (n() != null ? n().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof RespondToAuthChallengeRequest)) {
            return false;
        }
        RespondToAuthChallengeRequest respondToAuthChallengeRequest = (RespondToAuthChallengeRequest) obj;
        if ((respondToAuthChallengeRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (respondToAuthChallengeRequest.h() != null && !respondToAuthChallengeRequest.h().equals(h())) {
            return false;
        }
        if ((respondToAuthChallengeRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (respondToAuthChallengeRequest.i() != null && !respondToAuthChallengeRequest.i().equals(i())) {
            return false;
        }
        if ((respondToAuthChallengeRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (respondToAuthChallengeRequest.j() != null && !respondToAuthChallengeRequest.j().equals(j())) {
            return false;
        }
        if ((respondToAuthChallengeRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (respondToAuthChallengeRequest.k() != null && !respondToAuthChallengeRequest.k().equals(k())) {
            return false;
        }
        if ((respondToAuthChallengeRequest.m() == null) ^ (m() == null)) {
            return false;
        }
        if (respondToAuthChallengeRequest.m() != null && !respondToAuthChallengeRequest.m().equals(m())) {
            return false;
        }
        if ((respondToAuthChallengeRequest.n() == null) ^ (n() == null)) {
            return false;
        }
        return respondToAuthChallengeRequest.n() == null || respondToAuthChallengeRequest.n().equals(n());
    }
}
