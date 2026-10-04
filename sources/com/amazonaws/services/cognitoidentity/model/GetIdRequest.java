package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class GetIdRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private Map<String, String> c;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public GetIdRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public GetIdRequest d(String str) {
        this.b = str;
        return this;
    }

    public Map<String, String> j() {
        return this.c;
    }

    public void a(Map<String, String> map) {
        this.c = map;
    }

    public GetIdRequest b(Map<String, String> map) {
        this.c = map;
        return this;
    }

    public GetIdRequest a(String str, String str2) {
        if (this.c == null) {
            this.c = new HashMap();
        }
        if (this.c.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.c.put(str, str2);
        return this;
    }

    public GetIdRequest k() {
        this.c = null;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("AccountId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("IdentityPoolId: " + i() + ",");
        }
        if (j() != null) {
            sb.append("Logins: " + j());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() != null ? j().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetIdRequest)) {
            return false;
        }
        GetIdRequest getIdRequest = (GetIdRequest) obj;
        if ((getIdRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (getIdRequest.h() != null && !getIdRequest.h().equals(h())) {
            return false;
        }
        if ((getIdRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (getIdRequest.i() != null && !getIdRequest.i().equals(i())) {
            return false;
        }
        if ((getIdRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        return getIdRequest.j() == null || getIdRequest.j().equals(j());
    }
}
