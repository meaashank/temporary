package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class LambdaConfigType implements Serializable {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public LambdaConfigType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public LambdaConfigType d(String str) {
        this.b = str;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public LambdaConfigType f(String str) {
        this.c = str;
        return this;
    }

    public String d() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public LambdaConfigType h(String str) {
        this.d = str;
        return this;
    }

    public String e() {
        return this.e;
    }

    public void i(String str) {
        this.e = str;
    }

    public LambdaConfigType j(String str) {
        this.e = str;
        return this;
    }

    public String f() {
        return this.f;
    }

    public void k(String str) {
        this.f = str;
    }

    public LambdaConfigType l(String str) {
        this.f = str;
        return this;
    }

    public String g() {
        return this.g;
    }

    public void m(String str) {
        this.g = str;
    }

    public LambdaConfigType n(String str) {
        this.g = str;
        return this;
    }

    public String h() {
        return this.h;
    }

    public void o(String str) {
        this.h = str;
    }

    public LambdaConfigType p(String str) {
        this.h = str;
        return this;
    }

    public String i() {
        return this.i;
    }

    public void q(String str) {
        this.i = str;
    }

    public LambdaConfigType r(String str) {
        this.i = str;
        return this;
    }

    public String j() {
        return this.j;
    }

    public void s(String str) {
        this.j = str;
    }

    public LambdaConfigType t(String str) {
        this.j = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("PreSignUp: " + a() + ",");
        }
        if (b() != null) {
            sb.append("CustomMessage: " + b() + ",");
        }
        if (c() != null) {
            sb.append("PostConfirmation: " + c() + ",");
        }
        if (d() != null) {
            sb.append("PreAuthentication: " + d() + ",");
        }
        if (e() != null) {
            sb.append("PostAuthentication: " + e() + ",");
        }
        if (f() != null) {
            sb.append("DefineAuthChallenge: " + f() + ",");
        }
        if (g() != null) {
            sb.append("CreateAuthChallenge: " + g() + ",");
        }
        if (h() != null) {
            sb.append("VerifyAuthChallengeResponse: " + h() + ",");
        }
        if (i() != null) {
            sb.append("PreTokenGeneration: " + i() + ",");
        }
        if (j() != null) {
            sb.append("UserMigration: " + j());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() == null ? 0 : d().hashCode())) * 31) + (e() == null ? 0 : e().hashCode())) * 31) + (f() == null ? 0 : f().hashCode())) * 31) + (g() == null ? 0 : g().hashCode())) * 31) + (h() == null ? 0 : h().hashCode())) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() != null ? j().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof LambdaConfigType)) {
            return false;
        }
        LambdaConfigType lambdaConfigType = (LambdaConfigType) obj;
        if ((lambdaConfigType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (lambdaConfigType.a() != null && !lambdaConfigType.a().equals(a())) {
            return false;
        }
        if ((lambdaConfigType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (lambdaConfigType.b() != null && !lambdaConfigType.b().equals(b())) {
            return false;
        }
        if ((lambdaConfigType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (lambdaConfigType.c() != null && !lambdaConfigType.c().equals(c())) {
            return false;
        }
        if ((lambdaConfigType.d() == null) ^ (d() == null)) {
            return false;
        }
        if (lambdaConfigType.d() != null && !lambdaConfigType.d().equals(d())) {
            return false;
        }
        if ((lambdaConfigType.e() == null) ^ (e() == null)) {
            return false;
        }
        if (lambdaConfigType.e() != null && !lambdaConfigType.e().equals(e())) {
            return false;
        }
        if ((lambdaConfigType.f() == null) ^ (f() == null)) {
            return false;
        }
        if (lambdaConfigType.f() != null && !lambdaConfigType.f().equals(f())) {
            return false;
        }
        if ((lambdaConfigType.g() == null) ^ (g() == null)) {
            return false;
        }
        if (lambdaConfigType.g() != null && !lambdaConfigType.g().equals(g())) {
            return false;
        }
        if ((lambdaConfigType.h() == null) ^ (h() == null)) {
            return false;
        }
        if (lambdaConfigType.h() != null && !lambdaConfigType.h().equals(h())) {
            return false;
        }
        if ((lambdaConfigType.i() == null) ^ (i() == null)) {
            return false;
        }
        if (lambdaConfigType.i() != null && !lambdaConfigType.i().equals(i())) {
            return false;
        }
        if ((lambdaConfigType.j() == null) ^ (j() == null)) {
            return false;
        }
        return lambdaConfigType.j() == null || lambdaConfigType.j().equals(j());
    }
}
