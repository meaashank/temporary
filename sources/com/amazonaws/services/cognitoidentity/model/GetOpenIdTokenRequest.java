package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class GetOpenIdTokenRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private Map<String, String> b;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public GetOpenIdTokenRequest b(String str) {
        this.a = str;
        return this;
    }

    public Map<String, String> i() {
        return this.b;
    }

    public void a(Map<String, String> map) {
        this.b = map;
    }

    public GetOpenIdTokenRequest b(Map<String, String> map) {
        this.b = map;
        return this;
    }

    public GetOpenIdTokenRequest a(String str, String str2) {
        if (this.b == null) {
            this.b = new HashMap();
        }
        if (this.b.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.b.put(str, str2);
        return this;
    }

    public GetOpenIdTokenRequest j() {
        this.b = null;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("IdentityId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("Logins: " + i());
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
        if (obj == null || !(obj instanceof GetOpenIdTokenRequest)) {
            return false;
        }
        GetOpenIdTokenRequest getOpenIdTokenRequest = (GetOpenIdTokenRequest) obj;
        if ((getOpenIdTokenRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (getOpenIdTokenRequest.h() != null && !getOpenIdTokenRequest.h().equals(h())) {
            return false;
        }
        if ((getOpenIdTokenRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        return getOpenIdTokenRequest.i() == null || getOpenIdTokenRequest.i().equals(i());
    }
}
