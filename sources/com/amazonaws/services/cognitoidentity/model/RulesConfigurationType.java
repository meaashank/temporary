package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RulesConfigurationType implements Serializable {
    private List<MappingRule> a;

    public List<MappingRule> a() {
        return this.a;
    }

    public void a(Collection<MappingRule> collection) {
        if (collection == null) {
            this.a = null;
        } else {
            this.a = new ArrayList(collection);
        }
    }

    public RulesConfigurationType a(MappingRule... mappingRuleArr) {
        if (a() == null) {
            this.a = new ArrayList(mappingRuleArr.length);
        }
        for (MappingRule mappingRule : mappingRuleArr) {
            this.a.add(mappingRule);
        }
        return this;
    }

    public RulesConfigurationType b(Collection<MappingRule> collection) {
        a(collection);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("Rules: " + a());
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
        if (obj == null || !(obj instanceof RulesConfigurationType)) {
            return false;
        }
        RulesConfigurationType rulesConfigurationType = (RulesConfigurationType) obj;
        if ((rulesConfigurationType.a() == null) ^ (a() == null)) {
            return false;
        }
        return rulesConfigurationType.a() == null || rulesConfigurationType.a().equals(a());
    }
}
