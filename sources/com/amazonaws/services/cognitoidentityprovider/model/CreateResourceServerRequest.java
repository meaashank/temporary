package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CreateResourceServerRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;
    private List<ResourceServerScopeType> d;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public CreateResourceServerRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public CreateResourceServerRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public CreateResourceServerRequest f(String str) {
        this.c = str;
        return this;
    }

    public List<ResourceServerScopeType> k() {
        return this.d;
    }

    public void a(Collection<ResourceServerScopeType> collection) {
        if (collection == null) {
            this.d = null;
        } else {
            this.d = new ArrayList(collection);
        }
    }

    public CreateResourceServerRequest a(ResourceServerScopeType... resourceServerScopeTypeArr) {
        if (k() == null) {
            this.d = new ArrayList(resourceServerScopeTypeArr.length);
        }
        for (ResourceServerScopeType resourceServerScopeType : resourceServerScopeTypeArr) {
            this.d.add(resourceServerScopeType);
        }
        return this;
    }

    public CreateResourceServerRequest b(Collection<ResourceServerScopeType> collection) {
        a(collection);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("Identifier: " + i() + ",");
        }
        if (j() != null) {
            sb.append("Name: " + j() + ",");
        }
        if (k() != null) {
            sb.append("Scopes: " + k());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() != null ? k().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateResourceServerRequest)) {
            return false;
        }
        CreateResourceServerRequest createResourceServerRequest = (CreateResourceServerRequest) obj;
        if ((createResourceServerRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (createResourceServerRequest.h() != null && !createResourceServerRequest.h().equals(h())) {
            return false;
        }
        if ((createResourceServerRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (createResourceServerRequest.i() != null && !createResourceServerRequest.i().equals(i())) {
            return false;
        }
        if ((createResourceServerRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (createResourceServerRequest.j() != null && !createResourceServerRequest.j().equals(j())) {
            return false;
        }
        if ((createResourceServerRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        return createResourceServerRequest.k() == null || createResourceServerRequest.k().equals(k());
    }
}
