package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ListIdentitiesResult implements Serializable {
    private String a;
    private List<IdentityDescription> b;
    private String c;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public ListIdentitiesResult b(String str) {
        this.a = str;
        return this;
    }

    public List<IdentityDescription> b() {
        return this.b;
    }

    public void a(Collection<IdentityDescription> collection) {
        if (collection == null) {
            this.b = null;
        } else {
            this.b = new ArrayList(collection);
        }
    }

    public ListIdentitiesResult a(IdentityDescription... identityDescriptionArr) {
        if (b() == null) {
            this.b = new ArrayList(identityDescriptionArr.length);
        }
        for (IdentityDescription identityDescription : identityDescriptionArr) {
            this.b.add(identityDescription);
        }
        return this;
    }

    public ListIdentitiesResult b(Collection<IdentityDescription> collection) {
        a(collection);
        return this;
    }

    public String c() {
        return this.c;
    }

    public void c(String str) {
        this.c = str;
    }

    public ListIdentitiesResult d(String str) {
        this.c = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("IdentityPoolId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("Identities: " + b() + ",");
        }
        if (c() != null) {
            sb.append("NextToken: " + c());
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
        if (obj == null || !(obj instanceof ListIdentitiesResult)) {
            return false;
        }
        ListIdentitiesResult listIdentitiesResult = (ListIdentitiesResult) obj;
        if ((listIdentitiesResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (listIdentitiesResult.a() != null && !listIdentitiesResult.a().equals(a())) {
            return false;
        }
        if ((listIdentitiesResult.b() == null) ^ (b() == null)) {
            return false;
        }
        if (listIdentitiesResult.b() != null && !listIdentitiesResult.b().equals(b())) {
            return false;
        }
        if ((listIdentitiesResult.c() == null) ^ (c() == null)) {
            return false;
        }
        return listIdentitiesResult.c() == null || listIdentitiesResult.c().equals(c());
    }
}
