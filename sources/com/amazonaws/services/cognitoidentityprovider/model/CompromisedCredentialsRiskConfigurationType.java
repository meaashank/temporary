package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CompromisedCredentialsRiskConfigurationType implements Serializable {
    private List<String> a;
    private CompromisedCredentialsActionsType b;

    public List<String> a() {
        return this.a;
    }

    public void a(Collection<String> collection) {
        if (collection == null) {
            this.a = null;
        } else {
            this.a = new ArrayList(collection);
        }
    }

    public CompromisedCredentialsRiskConfigurationType a(String... strArr) {
        if (a() == null) {
            this.a = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.a.add(str);
        }
        return this;
    }

    public CompromisedCredentialsRiskConfigurationType b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public CompromisedCredentialsActionsType b() {
        return this.b;
    }

    public void a(CompromisedCredentialsActionsType compromisedCredentialsActionsType) {
        this.b = compromisedCredentialsActionsType;
    }

    public CompromisedCredentialsRiskConfigurationType b(CompromisedCredentialsActionsType compromisedCredentialsActionsType) {
        this.b = compromisedCredentialsActionsType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("EventFilter: " + a() + ",");
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
        if (obj == null || !(obj instanceof CompromisedCredentialsRiskConfigurationType)) {
            return false;
        }
        CompromisedCredentialsRiskConfigurationType compromisedCredentialsRiskConfigurationType = (CompromisedCredentialsRiskConfigurationType) obj;
        if ((compromisedCredentialsRiskConfigurationType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (compromisedCredentialsRiskConfigurationType.a() != null && !compromisedCredentialsRiskConfigurationType.a().equals(a())) {
            return false;
        }
        if ((compromisedCredentialsRiskConfigurationType.b() == null) ^ (b() == null)) {
            return false;
        }
        return compromisedCredentialsRiskConfigurationType.b() == null || compromisedCredentialsRiskConfigurationType.b().equals(b());
    }
}
