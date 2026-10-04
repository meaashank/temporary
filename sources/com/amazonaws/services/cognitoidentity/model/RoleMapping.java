package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class RoleMapping implements Serializable {
    private String a;
    private String b;
    private RulesConfigurationType c;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public RoleMapping b(String str) {
        this.a = str;
        return this;
    }

    public void a(RoleMappingType roleMappingType) {
        this.a = roleMappingType.toString();
    }

    public RoleMapping b(RoleMappingType roleMappingType) {
        this.a = roleMappingType.toString();
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public RoleMapping d(String str) {
        this.b = str;
        return this;
    }

    public void a(AmbiguousRoleResolutionType ambiguousRoleResolutionType) {
        this.b = ambiguousRoleResolutionType.toString();
    }

    public RoleMapping b(AmbiguousRoleResolutionType ambiguousRoleResolutionType) {
        this.b = ambiguousRoleResolutionType.toString();
        return this;
    }

    public RulesConfigurationType c() {
        return this.c;
    }

    public void a(RulesConfigurationType rulesConfigurationType) {
        this.c = rulesConfigurationType;
    }

    public RoleMapping b(RulesConfigurationType rulesConfigurationType) {
        this.c = rulesConfigurationType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("Type: " + a() + ",");
        }
        if (b() != null) {
            sb.append("AmbiguousRoleResolution: " + b() + ",");
        }
        if (c() != null) {
            sb.append("RulesConfiguration: " + c());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() != null ? c().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof RoleMapping)) {
            return false;
        }
        RoleMapping roleMapping = (RoleMapping) obj;
        if ((roleMapping.a() == null) ^ (a() == null)) {
            return false;
        }
        if (roleMapping.a() != null && !roleMapping.a().equals(a())) {
            return false;
        }
        if ((roleMapping.b() == null) ^ (b() == null)) {
            return false;
        }
        if (roleMapping.b() != null && !roleMapping.b().equals(b())) {
            return false;
        }
        if ((roleMapping.c() == null) ^ (c() == null)) {
            return false;
        }
        return roleMapping.c() == null || roleMapping.c().equals(c());
    }
}
