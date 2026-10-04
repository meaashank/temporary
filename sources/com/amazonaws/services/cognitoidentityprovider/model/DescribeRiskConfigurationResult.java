package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class DescribeRiskConfigurationResult implements Serializable {
    private RiskConfigurationType a;

    public RiskConfigurationType a() {
        return this.a;
    }

    public void a(RiskConfigurationType riskConfigurationType) {
        this.a = riskConfigurationType;
    }

    public DescribeRiskConfigurationResult b(RiskConfigurationType riskConfigurationType) {
        this.a = riskConfigurationType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("RiskConfiguration: " + a());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return 31 + (a() == null ? 0 : a().hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DescribeRiskConfigurationResult)) {
            return false;
        }
        DescribeRiskConfigurationResult describeRiskConfigurationResult = (DescribeRiskConfigurationResult) obj;
        if ((describeRiskConfigurationResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return describeRiskConfigurationResult.a() == null || describeRiskConfigurationResult.a().equals(a());
    }
}
