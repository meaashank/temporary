package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ListIdentityPoolsResult implements Serializable {
    private List<IdentityPoolShortDescription> a;
    private String b;

    public List<IdentityPoolShortDescription> a() {
        return this.a;
    }

    public void a(Collection<IdentityPoolShortDescription> collection) {
        if (collection == null) {
            this.a = null;
        } else {
            this.a = new ArrayList(collection);
        }
    }

    public ListIdentityPoolsResult a(IdentityPoolShortDescription... identityPoolShortDescriptionArr) {
        if (a() == null) {
            this.a = new ArrayList(identityPoolShortDescriptionArr.length);
        }
        for (IdentityPoolShortDescription identityPoolShortDescription : identityPoolShortDescriptionArr) {
            this.a.add(identityPoolShortDescription);
        }
        return this;
    }

    public ListIdentityPoolsResult b(Collection<IdentityPoolShortDescription> collection) {
        a(collection);
        return this;
    }

    public String b() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public ListIdentityPoolsResult b(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("IdentityPools: " + a() + ",");
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
        if (obj == null || !(obj instanceof ListIdentityPoolsResult)) {
            return false;
        }
        ListIdentityPoolsResult listIdentityPoolsResult = (ListIdentityPoolsResult) obj;
        if ((listIdentityPoolsResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (listIdentityPoolsResult.a() != null && !listIdentityPoolsResult.a().equals(a())) {
            return false;
        }
        if ((listIdentityPoolsResult.b() == null) ^ (b() == null)) {
            return false;
        }
        return listIdentityPoolsResult.b() == null || listIdentityPoolsResult.b().equals(b());
    }
}
