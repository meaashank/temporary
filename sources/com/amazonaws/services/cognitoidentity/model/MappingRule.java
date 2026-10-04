package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class MappingRule implements Serializable {
    private String a;
    private String b;
    private String c;
    private String d;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public MappingRule b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public MappingRule d(String str) {
        this.b = str;
        return this;
    }

    public void a(MappingRuleMatchType mappingRuleMatchType) {
        this.b = mappingRuleMatchType.toString();
    }

    public MappingRule b(MappingRuleMatchType mappingRuleMatchType) {
        this.b = mappingRuleMatchType.toString();
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public MappingRule f(String str) {
        this.c = str;
        return this;
    }

    public String d() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public MappingRule h(String str) {
        this.d = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("Claim: " + a() + ",");
        }
        if (b() != null) {
            sb.append("MatchType: " + b() + ",");
        }
        if (c() != null) {
            sb.append("Value: " + c() + ",");
        }
        if (d() != null) {
            sb.append("RoleARN: " + d());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() != null ? d().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof MappingRule)) {
            return false;
        }
        MappingRule mappingRule = (MappingRule) obj;
        if ((mappingRule.a() == null) ^ (a() == null)) {
            return false;
        }
        if (mappingRule.a() != null && !mappingRule.a().equals(a())) {
            return false;
        }
        if ((mappingRule.b() == null) ^ (b() == null)) {
            return false;
        }
        if (mappingRule.b() != null && !mappingRule.b().equals(b())) {
            return false;
        }
        if ((mappingRule.c() == null) ^ (c() == null)) {
            return false;
        }
        if (mappingRule.c() != null && !mappingRule.c().equals(c())) {
            return false;
        }
        if ((mappingRule.d() == null) ^ (d() == null)) {
            return false;
        }
        return mappingRule.d() == null || mappingRule.d().equals(d());
    }
}
