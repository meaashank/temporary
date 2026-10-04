package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ResourceServerType implements Serializable {
    private String a;
    private String b;
    private String c;
    private List<ResourceServerScopeType> d;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public ResourceServerType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public ResourceServerType d(String str) {
        this.b = str;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public ResourceServerType f(String str) {
        this.c = str;
        return this;
    }

    public List<ResourceServerScopeType> d() {
        return this.d;
    }

    public void a(Collection<ResourceServerScopeType> collection) {
        if (collection == null) {
            this.d = null;
        } else {
            this.d = new ArrayList(collection);
        }
    }

    public ResourceServerType a(ResourceServerScopeType... resourceServerScopeTypeArr) {
        if (d() == null) {
            this.d = new ArrayList(resourceServerScopeTypeArr.length);
        }
        for (ResourceServerScopeType resourceServerScopeType : resourceServerScopeTypeArr) {
            this.d.add(resourceServerScopeType);
        }
        return this;
    }

    public ResourceServerType b(Collection<ResourceServerScopeType> collection) {
        a(collection);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("UserPoolId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("Identifier: " + b() + ",");
        }
        if (c() != null) {
            sb.append("Name: " + c() + ",");
        }
        if (d() != null) {
            sb.append("Scopes: " + d());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() != null ? d().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ResourceServerType)) {
            return false;
        }
        ResourceServerType resourceServerType = (ResourceServerType) obj;
        if ((resourceServerType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (resourceServerType.a() != null && !resourceServerType.a().equals(a())) {
            return false;
        }
        if ((resourceServerType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (resourceServerType.b() != null && !resourceServerType.b().equals(b())) {
            return false;
        }
        if ((resourceServerType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (resourceServerType.c() != null && !resourceServerType.c().equals(c())) {
            return false;
        }
        if ((resourceServerType.d() == null) ^ (d() == null)) {
            return false;
        }
        return resourceServerType.d() == null || resourceServerType.d().equals(d());
    }
}
