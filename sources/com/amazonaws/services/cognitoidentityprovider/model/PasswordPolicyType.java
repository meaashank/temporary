package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class PasswordPolicyType implements Serializable {
    private Integer a;
    private Boolean b;
    private Boolean c;
    private Boolean d;
    private Boolean e;

    public Integer a() {
        return this.a;
    }

    public void a(Integer num) {
        this.a = num;
    }

    public PasswordPolicyType b(Integer num) {
        this.a = num;
        return this;
    }

    public Boolean b() {
        return this.b;
    }

    public Boolean c() {
        return this.b;
    }

    public void a(Boolean bool) {
        this.b = bool;
    }

    public PasswordPolicyType b(Boolean bool) {
        this.b = bool;
        return this;
    }

    public Boolean d() {
        return this.c;
    }

    public Boolean e() {
        return this.c;
    }

    public void c(Boolean bool) {
        this.c = bool;
    }

    public PasswordPolicyType d(Boolean bool) {
        this.c = bool;
        return this;
    }

    public Boolean f() {
        return this.d;
    }

    public Boolean g() {
        return this.d;
    }

    public void e(Boolean bool) {
        this.d = bool;
    }

    public PasswordPolicyType f(Boolean bool) {
        this.d = bool;
        return this;
    }

    public Boolean h() {
        return this.e;
    }

    public Boolean i() {
        return this.e;
    }

    public void g(Boolean bool) {
        this.e = bool;
    }

    public PasswordPolicyType h(Boolean bool) {
        this.e = bool;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("MinimumLength: " + a() + ",");
        }
        if (c() != null) {
            sb.append("RequireUppercase: " + c() + ",");
        }
        if (e() != null) {
            sb.append("RequireLowercase: " + e() + ",");
        }
        if (g() != null) {
            sb.append("RequireNumbers: " + g() + ",");
        }
        if (i() != null) {
            sb.append("RequireSymbols: " + i());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (e() == null ? 0 : e().hashCode())) * 31) + (g() == null ? 0 : g().hashCode())) * 31) + (i() != null ? i().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof PasswordPolicyType)) {
            return false;
        }
        PasswordPolicyType passwordPolicyType = (PasswordPolicyType) obj;
        if ((passwordPolicyType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (passwordPolicyType.a() != null && !passwordPolicyType.a().equals(a())) {
            return false;
        }
        if ((passwordPolicyType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (passwordPolicyType.c() != null && !passwordPolicyType.c().equals(c())) {
            return false;
        }
        if ((passwordPolicyType.e() == null) ^ (e() == null)) {
            return false;
        }
        if (passwordPolicyType.e() != null && !passwordPolicyType.e().equals(e())) {
            return false;
        }
        if ((passwordPolicyType.g() == null) ^ (g() == null)) {
            return false;
        }
        if (passwordPolicyType.g() != null && !passwordPolicyType.g().equals(g())) {
            return false;
        }
        if ((passwordPolicyType.i() == null) ^ (i() == null)) {
            return false;
        }
        return passwordPolicyType.i() == null || passwordPolicyType.i().equals(i());
    }
}
