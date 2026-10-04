package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ListIdentityProvidersResult implements Serializable {
    private List<ProviderDescription> a;
    private String b;

    public List<ProviderDescription> a() {
        return this.a;
    }

    public void a(Collection<ProviderDescription> collection) {
        if (collection == null) {
            this.a = null;
        } else {
            this.a = new ArrayList(collection);
        }
    }

    public ListIdentityProvidersResult a(ProviderDescription... providerDescriptionArr) {
        if (a() == null) {
            this.a = new ArrayList(providerDescriptionArr.length);
        }
        for (ProviderDescription providerDescription : providerDescriptionArr) {
            this.a.add(providerDescription);
        }
        return this;
    }

    public ListIdentityProvidersResult b(Collection<ProviderDescription> collection) {
        a(collection);
        return this;
    }

    public String b() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public ListIdentityProvidersResult b(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("Providers: " + a() + ",");
        }
        if (b() != null) {
            sb.append("NextToken: " + b());
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
        if (obj == null || !(obj instanceof ListIdentityProvidersResult)) {
            return false;
        }
        ListIdentityProvidersResult listIdentityProvidersResult = (ListIdentityProvidersResult) obj;
        if ((listIdentityProvidersResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (listIdentityProvidersResult.a() != null && !listIdentityProvidersResult.a().equals(a())) {
            return false;
        }
        if ((listIdentityProvidersResult.b() == null) ^ (b() == null)) {
            return false;
        }
        return listIdentityProvidersResult.b() == null || listIdentityProvidersResult.b().equals(b());
    }
}
