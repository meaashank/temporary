package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class GetOpenIdTokenForDeveloperIdentityRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private Map<String, String> c;
    private Long d;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public GetOpenIdTokenForDeveloperIdentityRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public GetOpenIdTokenForDeveloperIdentityRequest d(String str) {
        this.b = str;
        return this;
    }

    public Map<String, String> j() {
        return this.c;
    }

    public void a(Map<String, String> map) {
        this.c = map;
    }

    public GetOpenIdTokenForDeveloperIdentityRequest b(Map<String, String> map) {
        this.c = map;
        return this;
    }

    public GetOpenIdTokenForDeveloperIdentityRequest a(String str, String str2) {
        if (this.c == null) {
            this.c = new HashMap();
        }
        if (this.c.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.c.put(str, str2);
        return this;
    }

    public GetOpenIdTokenForDeveloperIdentityRequest k() {
        this.c = null;
        return this;
    }

    public Long l() {
        return this.d;
    }

    public void a(Long l) {
        this.d = l;
    }

    public GetOpenIdTokenForDeveloperIdentityRequest b(Long l) {
        this.d = l;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("IdentityPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("IdentityId: " + i() + ",");
        }
        if (j() != null) {
            sb.append("Logins: " + j() + ",");
        }
        if (l() != null) {
            sb.append("TokenDuration: " + l());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (l() != null ? l().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetOpenIdTokenForDeveloperIdentityRequest)) {
            return false;
        }
        GetOpenIdTokenForDeveloperIdentityRequest getOpenIdTokenForDeveloperIdentityRequest = (GetOpenIdTokenForDeveloperIdentityRequest) obj;
        if ((getOpenIdTokenForDeveloperIdentityRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (getOpenIdTokenForDeveloperIdentityRequest.h() != null && !getOpenIdTokenForDeveloperIdentityRequest.h().equals(h())) {
            return false;
        }
        if ((getOpenIdTokenForDeveloperIdentityRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (getOpenIdTokenForDeveloperIdentityRequest.i() != null && !getOpenIdTokenForDeveloperIdentityRequest.i().equals(i())) {
            return false;
        }
        if ((getOpenIdTokenForDeveloperIdentityRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (getOpenIdTokenForDeveloperIdentityRequest.j() != null && !getOpenIdTokenForDeveloperIdentityRequest.j().equals(j())) {
            return false;
        }
        if ((getOpenIdTokenForDeveloperIdentityRequest.l() == null) ^ (l() == null)) {
            return false;
        }
        return getOpenIdTokenForDeveloperIdentityRequest.l() == null || getOpenIdTokenForDeveloperIdentityRequest.l().equals(l());
    }
}
