package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdminDeleteUserAttributesRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private List<String> c;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AdminDeleteUserAttributesRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public AdminDeleteUserAttributesRequest d(String str) {
        this.b = str;
        return this;
    }

    public List<String> j() {
        return this.c;
    }

    public void a(Collection<String> collection) {
        if (collection == null) {
            this.c = null;
        } else {
            this.c = new ArrayList(collection);
        }
    }

    public AdminDeleteUserAttributesRequest a(String... strArr) {
        if (j() == null) {
            this.c = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.c.add(str);
        }
        return this;
    }

    public AdminDeleteUserAttributesRequest b(Collection<String> collection) {
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
            sb.append("Username: " + i() + ",");
        }
        if (j() != null) {
            sb.append("UserAttributeNames: " + j());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() != null ? j().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AdminDeleteUserAttributesRequest)) {
            return false;
        }
        AdminDeleteUserAttributesRequest adminDeleteUserAttributesRequest = (AdminDeleteUserAttributesRequest) obj;
        if ((adminDeleteUserAttributesRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (adminDeleteUserAttributesRequest.h() != null && !adminDeleteUserAttributesRequest.h().equals(h())) {
            return false;
        }
        if ((adminDeleteUserAttributesRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (adminDeleteUserAttributesRequest.i() != null && !adminDeleteUserAttributesRequest.i().equals(i())) {
            return false;
        }
        if ((adminDeleteUserAttributesRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        return adminDeleteUserAttributesRequest.j() == null || adminDeleteUserAttributesRequest.j().equals(j());
    }
}
