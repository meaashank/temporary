package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AccountTakeoverActionType implements Serializable {
    private Boolean a;
    private String b;

    public Boolean a() {
        return this.a;
    }

    public Boolean b() {
        return this.a;
    }

    public void a(Boolean bool) {
        this.a = bool;
    }

    public AccountTakeoverActionType b(Boolean bool) {
        this.a = bool;
        return this;
    }

    public String c() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public AccountTakeoverActionType b(String str) {
        this.b = str;
        return this;
    }

    public void a(AccountTakeoverEventActionType accountTakeoverEventActionType) {
        this.b = accountTakeoverEventActionType.toString();
    }

    public AccountTakeoverActionType b(AccountTakeoverEventActionType accountTakeoverEventActionType) {
        this.b = accountTakeoverEventActionType.toString();
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (b() != null) {
            sb.append("Notify: " + b() + ",");
        }
        if (c() != null) {
            sb.append("EventAction: " + c());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((b() == null ? 0 : b().hashCode()) + 31) * 31) + (c() != null ? c().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AccountTakeoverActionType)) {
            return false;
        }
        AccountTakeoverActionType accountTakeoverActionType = (AccountTakeoverActionType) obj;
        if ((accountTakeoverActionType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (accountTakeoverActionType.b() != null && !accountTakeoverActionType.b().equals(b())) {
            return false;
        }
        if ((accountTakeoverActionType.c() == null) ^ (c() == null)) {
            return false;
        }
        return accountTakeoverActionType.c() == null || accountTakeoverActionType.c().equals(c());
    }
}
