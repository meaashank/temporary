package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class CompromisedCredentialsActionsType implements Serializable {
    private String a;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public CompromisedCredentialsActionsType b(String str) {
        this.a = str;
        return this;
    }

    public void a(CompromisedCredentialsEventActionType compromisedCredentialsEventActionType) {
        this.a = compromisedCredentialsEventActionType.toString();
    }

    public CompromisedCredentialsActionsType b(CompromisedCredentialsEventActionType compromisedCredentialsEventActionType) {
        this.a = compromisedCredentialsEventActionType.toString();
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("EventAction: " + a());
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
        if (obj == null || !(obj instanceof CompromisedCredentialsActionsType)) {
            return false;
        }
        CompromisedCredentialsActionsType compromisedCredentialsActionsType = (CompromisedCredentialsActionsType) obj;
        if ((compromisedCredentialsActionsType.a() == null) ^ (a() == null)) {
            return false;
        }
        return compromisedCredentialsActionsType.a() == null || compromisedCredentialsActionsType.a().equals(a());
    }
}
