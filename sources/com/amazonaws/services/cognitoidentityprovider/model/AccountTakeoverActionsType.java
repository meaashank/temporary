package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AccountTakeoverActionsType implements Serializable {
    private AccountTakeoverActionType a;
    private AccountTakeoverActionType b;
    private AccountTakeoverActionType c;

    public AccountTakeoverActionType a() {
        return this.a;
    }

    public void a(AccountTakeoverActionType accountTakeoverActionType) {
        this.a = accountTakeoverActionType;
    }

    public AccountTakeoverActionsType b(AccountTakeoverActionType accountTakeoverActionType) {
        this.a = accountTakeoverActionType;
        return this;
    }

    public AccountTakeoverActionType b() {
        return this.b;
    }

    public void c(AccountTakeoverActionType accountTakeoverActionType) {
        this.b = accountTakeoverActionType;
    }

    public AccountTakeoverActionsType d(AccountTakeoverActionType accountTakeoverActionType) {
        this.b = accountTakeoverActionType;
        return this;
    }

    public AccountTakeoverActionType c() {
        return this.c;
    }

    public void e(AccountTakeoverActionType accountTakeoverActionType) {
        this.c = accountTakeoverActionType;
    }

    public AccountTakeoverActionsType f(AccountTakeoverActionType accountTakeoverActionType) {
        this.c = accountTakeoverActionType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("LowAction: " + a() + ",");
        }
        if (b() != null) {
            sb.append("MediumAction: " + b() + ",");
        }
        if (c() != null) {
            sb.append("HighAction: " + c());
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
        if (obj == null || !(obj instanceof AccountTakeoverActionsType)) {
            return false;
        }
        AccountTakeoverActionsType accountTakeoverActionsType = (AccountTakeoverActionsType) obj;
        if ((accountTakeoverActionsType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (accountTakeoverActionsType.a() != null && !accountTakeoverActionsType.a().equals(a())) {
            return false;
        }
        if ((accountTakeoverActionsType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (accountTakeoverActionsType.b() != null && !accountTakeoverActionsType.b().equals(b())) {
            return false;
        }
        if ((accountTakeoverActionsType.c() == null) ^ (c() == null)) {
            return false;
        }
        return accountTakeoverActionsType.c() == null || accountTakeoverActionsType.c().equals(c());
    }
}
