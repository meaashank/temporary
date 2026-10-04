package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class EventRiskType implements Serializable {
    private String a;
    private String b;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public EventRiskType b(String str) {
        this.a = str;
        return this;
    }

    public void a(RiskDecisionType riskDecisionType) {
        this.a = riskDecisionType.toString();
    }

    public EventRiskType b(RiskDecisionType riskDecisionType) {
        this.a = riskDecisionType.toString();
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public EventRiskType d(String str) {
        this.b = str;
        return this;
    }

    public void a(RiskLevelType riskLevelType) {
        this.b = riskLevelType.toString();
    }

    public EventRiskType b(RiskLevelType riskLevelType) {
        this.b = riskLevelType.toString();
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("RiskDecision: " + a() + ",");
        }
        if (b() != null) {
            sb.append("RiskLevel: " + b());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() != null ? b().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof EventRiskType)) {
            return false;
        }
        EventRiskType eventRiskType = (EventRiskType) obj;
        if ((eventRiskType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (eventRiskType.a() != null && !eventRiskType.a().equals(a())) {
            return false;
        }
        if ((eventRiskType.b() == null) ^ (b() == null)) {
            return false;
        }
        return eventRiskType.b() == null || eventRiskType.b().equals(b());
    }
}
