package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SetIdentityPoolRolesRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private Map<String, String> b;
    private Map<String, RoleMapping> c;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public SetIdentityPoolRolesRequest b(String str) {
        this.a = str;
        return this;
    }

    public Map<String, String> i() {
        return this.b;
    }

    public void a(Map<String, String> map) {
        this.b = map;
    }

    public SetIdentityPoolRolesRequest b(Map<String, String> map) {
        this.b = map;
        return this;
    }

    public SetIdentityPoolRolesRequest a(String str, String str2) {
        if (this.b == null) {
            this.b = new HashMap();
        }
        if (this.b.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.b.put(str, str2);
        return this;
    }

    public SetIdentityPoolRolesRequest j() {
        this.b = null;
        return this;
    }

    public Map<String, RoleMapping> k() {
        return this.c;
    }

    public void c(Map<String, RoleMapping> map) {
        this.c = map;
    }

    public SetIdentityPoolRolesRequest d(Map<String, RoleMapping> map) {
        this.c = map;
        return this;
    }

    public SetIdentityPoolRolesRequest a(String str, RoleMapping roleMapping) {
        if (this.c == null) {
            this.c = new HashMap();
        }
        if (this.c.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.c.put(str, roleMapping);
        return this;
    }

    public SetIdentityPoolRolesRequest l() {
        this.c = null;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("IdentityPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("Roles: " + i() + ",");
        }
        if (k() != null) {
            sb.append("RoleMappings: " + k());
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
        if (obj == null || !(obj instanceof SetIdentityPoolRolesRequest)) {
            return false;
        }
        SetIdentityPoolRolesRequest setIdentityPoolRolesRequest = (SetIdentityPoolRolesRequest) obj;
        if ((setIdentityPoolRolesRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (setIdentityPoolRolesRequest.h() != null && !setIdentityPoolRolesRequest.h().equals(h())) {
            return false;
        }
        if ((setIdentityPoolRolesRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (setIdentityPoolRolesRequest.i() != null && !setIdentityPoolRolesRequest.i().equals(i())) {
            return false;
        }
        if ((setIdentityPoolRolesRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        return setIdentityPoolRolesRequest.k() == null || setIdentityPoolRolesRequest.k().equals(k());
    }
}
