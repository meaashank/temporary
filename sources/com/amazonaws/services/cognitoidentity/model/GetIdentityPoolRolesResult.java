package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class GetIdentityPoolRolesResult implements Serializable {
    private String a;
    private Map<String, String> b;
    private Map<String, RoleMapping> c;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public GetIdentityPoolRolesResult b(String str) {
        this.a = str;
        return this;
    }

    public Map<String, String> b() {
        return this.b;
    }

    public void a(Map<String, String> map) {
        this.b = map;
    }

    public GetIdentityPoolRolesResult b(Map<String, String> map) {
        this.b = map;
        return this;
    }

    public GetIdentityPoolRolesResult a(String str, String str2) {
        if (this.b == null) {
            this.b = new HashMap();
        }
        if (this.b.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.b.put(str, str2);
        return this;
    }

    public GetIdentityPoolRolesResult c() {
        this.b = null;
        return this;
    }

    public Map<String, RoleMapping> d() {
        return this.c;
    }

    public void c(Map<String, RoleMapping> map) {
        this.c = map;
    }

    public GetIdentityPoolRolesResult d(Map<String, RoleMapping> map) {
        this.c = map;
        return this;
    }

    public GetIdentityPoolRolesResult a(String str, RoleMapping roleMapping) {
        if (this.c == null) {
            this.c = new HashMap();
        }
        if (this.c.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.c.put(str, roleMapping);
        return this;
    }

    public GetIdentityPoolRolesResult e() {
        this.c = null;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("IdentityPoolId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("Roles: " + b() + ",");
        }
        if (d() != null) {
            sb.append("RoleMappings: " + d());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (d() != null ? d().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetIdentityPoolRolesResult)) {
            return false;
        }
        GetIdentityPoolRolesResult getIdentityPoolRolesResult = (GetIdentityPoolRolesResult) obj;
        if ((getIdentityPoolRolesResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (getIdentityPoolRolesResult.a() != null && !getIdentityPoolRolesResult.a().equals(a())) {
            return false;
        }
        if ((getIdentityPoolRolesResult.b() == null) ^ (b() == null)) {
            return false;
        }
        if (getIdentityPoolRolesResult.b() != null && !getIdentityPoolRolesResult.b().equals(b())) {
            return false;
        }
        if ((getIdentityPoolRolesResult.d() == null) ^ (d() == null)) {
            return false;
        }
        return getIdentityPoolRolesResult.d() == null || getIdentityPoolRolesResult.d().equals(d());
    }
}
