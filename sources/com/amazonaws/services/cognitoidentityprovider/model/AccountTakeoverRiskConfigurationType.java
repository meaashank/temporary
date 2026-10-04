package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AccountTakeoverRiskConfigurationType implements Serializable {
    private NotifyConfigurationType a;
    private AccountTakeoverActionsType b;

    public NotifyConfigurationType a() {
        return this.a;
    }

    public void a(NotifyConfigurationType notifyConfigurationType) {
        this.a = notifyConfigurationType;
    }

    public AccountTakeoverRiskConfigurationType b(NotifyConfigurationType notifyConfigurationType) {
        this.a = notifyConfigurationType;
        return this;
    }

    public AccountTakeoverActionsType b() {
        return this.b;
    }

    public void a(AccountTakeoverActionsType accountTakeoverActionsType) {
        this.b = accountTakeoverActionsType;
    }

    public AccountTakeoverRiskConfigurationType b(AccountTakeoverActionsType accountTakeoverActionsType) {
        this.b = accountTakeoverActionsType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("NotifyConfiguration: " + a() + ",");
        }
        if (b() != null) {
            sb.append("Actions: " + b());
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
        if (obj == null || !(obj instanceof AccountTakeoverRiskConfigurationType)) {
            return false;
        }
        AccountTakeoverRiskConfigurationType accountTakeoverRiskConfigurationType = (AccountTakeoverRiskConfigurationType) obj;
        if ((accountTakeoverRiskConfigurationType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (accountTakeoverRiskConfigurationType.a() != null && !accountTakeoverRiskConfigurationType.a().equals(a())) {
            return false;
        }
        if ((accountTakeoverRiskConfigurationType.b() == null) ^ (b() == null)) {
            return false;
        }
        return accountTakeoverRiskConfigurationType.b() == null || accountTakeoverRiskConfigurationType.b().equals(b());
    }
}
