package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ListResourceServersResult implements Serializable {
    private List<ResourceServerType> a;
    private String b;

    public List<ResourceServerType> a() {
        return this.a;
    }

    public void a(Collection<ResourceServerType> collection) {
        if (collection == null) {
            this.a = null;
        } else {
            this.a = new ArrayList(collection);
        }
    }

    public ListResourceServersResult a(ResourceServerType... resourceServerTypeArr) {
        if (a() == null) {
            this.a = new ArrayList(resourceServerTypeArr.length);
        }
        for (ResourceServerType resourceServerType : resourceServerTypeArr) {
            this.a.add(resourceServerType);
        }
        return this;
    }

    public ListResourceServersResult b(Collection<ResourceServerType> collection) {
        a(collection);
        return this;
    }

    public String b() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public ListResourceServersResult b(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("ResourceServers: " + a() + ",");
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
        if (obj == null || !(obj instanceof ListResourceServersResult)) {
            return false;
        }
        ListResourceServersResult listResourceServersResult = (ListResourceServersResult) obj;
        if ((listResourceServersResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (listResourceServersResult.a() != null && !listResourceServersResult.a().equals(a())) {
            return false;
        }
        if ((listResourceServersResult.b() == null) ^ (b() == null)) {
            return false;
        }
        return listResourceServersResult.b() == null || listResourceServersResult.b().equals(b());
    }
}
