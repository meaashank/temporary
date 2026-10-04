package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class GetCredentialsForIdentityRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private Map<String, String> b;
    private String c;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public GetCredentialsForIdentityRequest b(String str) {
        this.a = str;
        return this;
    }

    public Map<String, String> i() {
        return this.b;
    }

    public void a(Map<String, String> map) {
        this.b = map;
    }

    public GetCredentialsForIdentityRequest b(Map<String, String> map) {
        this.b = map;
        return this;
    }

    public GetCredentialsForIdentityRequest a(String str, String str2) {
        if (this.b == null) {
            this.b = new HashMap();
        }
        if (this.b.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.b.put(str, str2);
        return this;
    }

    public GetCredentialsForIdentityRequest j() {
        this.b = null;
        return this;
    }

    public String k() {
        return this.c;
    }

    public void c(String str) {
        this.c = str;
    }

    public GetCredentialsForIdentityRequest d(String str) {
        this.c = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("IdentityId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("Logins: " + i() + ",");
        }
        if (k() != null) {
            sb.append("CustomRoleArn: " + k());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (k() != null ? k().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetCredentialsForIdentityRequest)) {
            return false;
        }
        GetCredentialsForIdentityRequest getCredentialsForIdentityRequest = (GetCredentialsForIdentityRequest) obj;
        if ((getCredentialsForIdentityRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (getCredentialsForIdentityRequest.h() != null && !getCredentialsForIdentityRequest.h().equals(h())) {
            return false;
        }
        if ((getCredentialsForIdentityRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (getCredentialsForIdentityRequest.i() != null && !getCredentialsForIdentityRequest.i().equals(i())) {
            return false;
        }
        if ((getCredentialsForIdentityRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        return getCredentialsForIdentityRequest.k() == null || getCredentialsForIdentityRequest.k().equals(k());
    }
}
