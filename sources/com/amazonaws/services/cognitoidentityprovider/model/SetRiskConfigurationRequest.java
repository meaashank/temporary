package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class SetRiskConfigurationRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private CompromisedCredentialsRiskConfigurationType c;
    private AccountTakeoverRiskConfigurationType d;
    private RiskExceptionConfigurationType e;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public SetRiskConfigurationRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public SetRiskConfigurationRequest d(String str) {
        this.b = str;
        return this;
    }

    public CompromisedCredentialsRiskConfigurationType j() {
        return this.c;
    }

    public void a(CompromisedCredentialsRiskConfigurationType compromisedCredentialsRiskConfigurationType) {
        this.c = compromisedCredentialsRiskConfigurationType;
    }

    public SetRiskConfigurationRequest b(CompromisedCredentialsRiskConfigurationType compromisedCredentialsRiskConfigurationType) {
        this.c = compromisedCredentialsRiskConfigurationType;
        return this;
    }

    public AccountTakeoverRiskConfigurationType k() {
        return this.d;
    }

    public void a(AccountTakeoverRiskConfigurationType accountTakeoverRiskConfigurationType) {
        this.d = accountTakeoverRiskConfigurationType;
    }

    public SetRiskConfigurationRequest b(AccountTakeoverRiskConfigurationType accountTakeoverRiskConfigurationType) {
        this.d = accountTakeoverRiskConfigurationType;
        return this;
    }

    public RiskExceptionConfigurationType l() {
        return this.e;
    }

    public void a(RiskExceptionConfigurationType riskExceptionConfigurationType) {
        this.e = riskExceptionConfigurationType;
    }

    public SetRiskConfigurationRequest b(RiskExceptionConfigurationType riskExceptionConfigurationType) {
        this.e = riskExceptionConfigurationType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("ClientId: " + i() + ",");
        }
        if (j() != null) {
            sb.append("CompromisedCredentialsRiskConfiguration: " + j() + ",");
        }
        if (k() != null) {
            sb.append("AccountTakeoverRiskConfiguration: " + k() + ",");
        }
        if (l() != null) {
            sb.append("RiskExceptionConfiguration: " + l());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (l() != null ? l().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SetRiskConfigurationRequest)) {
            return false;
        }
        SetRiskConfigurationRequest setRiskConfigurationRequest = (SetRiskConfigurationRequest) obj;
        if ((setRiskConfigurationRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (setRiskConfigurationRequest.h() != null && !setRiskConfigurationRequest.h().equals(h())) {
            return false;
        }
        if ((setRiskConfigurationRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (setRiskConfigurationRequest.i() != null && !setRiskConfigurationRequest.i().equals(i())) {
            return false;
        }
        if ((setRiskConfigurationRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (setRiskConfigurationRequest.j() != null && !setRiskConfigurationRequest.j().equals(j())) {
            return false;
        }
        if ((setRiskConfigurationRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (setRiskConfigurationRequest.k() != null && !setRiskConfigurationRequest.k().equals(k())) {
            return false;
        }
        if ((setRiskConfigurationRequest.l() == null) ^ (l() == null)) {
            return false;
        }
        return setRiskConfigurationRequest.l() == null || setRiskConfigurationRequest.l().equals(l());
    }
}
