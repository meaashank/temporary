package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class RiskConfigurationType implements Serializable {
    private String a;
    private String b;
    private CompromisedCredentialsRiskConfigurationType c;
    private AccountTakeoverRiskConfigurationType d;
    private RiskExceptionConfigurationType e;
    private Date f;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public RiskConfigurationType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public RiskConfigurationType d(String str) {
        this.b = str;
        return this;
    }

    public CompromisedCredentialsRiskConfigurationType c() {
        return this.c;
    }

    public void a(CompromisedCredentialsRiskConfigurationType compromisedCredentialsRiskConfigurationType) {
        this.c = compromisedCredentialsRiskConfigurationType;
    }

    public RiskConfigurationType b(CompromisedCredentialsRiskConfigurationType compromisedCredentialsRiskConfigurationType) {
        this.c = compromisedCredentialsRiskConfigurationType;
        return this;
    }

    public AccountTakeoverRiskConfigurationType d() {
        return this.d;
    }

    public void a(AccountTakeoverRiskConfigurationType accountTakeoverRiskConfigurationType) {
        this.d = accountTakeoverRiskConfigurationType;
    }

    public RiskConfigurationType b(AccountTakeoverRiskConfigurationType accountTakeoverRiskConfigurationType) {
        this.d = accountTakeoverRiskConfigurationType;
        return this;
    }

    public RiskExceptionConfigurationType e() {
        return this.e;
    }

    public void a(RiskExceptionConfigurationType riskExceptionConfigurationType) {
        this.e = riskExceptionConfigurationType;
    }

    public RiskConfigurationType b(RiskExceptionConfigurationType riskExceptionConfigurationType) {
        this.e = riskExceptionConfigurationType;
        return this;
    }

    public Date f() {
        return this.f;
    }

    public void a(Date date) {
        this.f = date;
    }

    public RiskConfigurationType b(Date date) {
        this.f = date;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("UserPoolId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("ClientId: " + b() + ",");
        }
        if (c() != null) {
            sb.append("CompromisedCredentialsRiskConfiguration: " + c() + ",");
        }
        if (d() != null) {
            sb.append("AccountTakeoverRiskConfiguration: " + d() + ",");
        }
        if (e() != null) {
            sb.append("RiskExceptionConfiguration: " + e() + ",");
        }
        if (f() != null) {
            sb.append("LastModifiedDate: " + f());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() == null ? 0 : d().hashCode())) * 31) + (e() == null ? 0 : e().hashCode())) * 31) + (f() != null ? f().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof RiskConfigurationType)) {
            return false;
        }
        RiskConfigurationType riskConfigurationType = (RiskConfigurationType) obj;
        if ((riskConfigurationType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (riskConfigurationType.a() != null && !riskConfigurationType.a().equals(a())) {
            return false;
        }
        if ((riskConfigurationType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (riskConfigurationType.b() != null && !riskConfigurationType.b().equals(b())) {
            return false;
        }
        if ((riskConfigurationType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (riskConfigurationType.c() != null && !riskConfigurationType.c().equals(c())) {
            return false;
        }
        if ((riskConfigurationType.d() == null) ^ (d() == null)) {
            return false;
        }
        if (riskConfigurationType.d() != null && !riskConfigurationType.d().equals(d())) {
            return false;
        }
        if ((riskConfigurationType.e() == null) ^ (e() == null)) {
            return false;
        }
        if (riskConfigurationType.e() != null && !riskConfigurationType.e().equals(e())) {
            return false;
        }
        if ((riskConfigurationType.f() == null) ^ (f() == null)) {
            return false;
        }
        return riskConfigurationType.f() == null || riskConfigurationType.f().equals(f());
    }
}
