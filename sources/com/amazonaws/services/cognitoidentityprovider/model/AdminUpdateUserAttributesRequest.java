package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdminUpdateUserAttributesRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private List<AttributeType> c;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AdminUpdateUserAttributesRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public AdminUpdateUserAttributesRequest d(String str) {
        this.b = str;
        return this;
    }

    public List<AttributeType> j() {
        return this.c;
    }

    public void a(Collection<AttributeType> collection) {
        if (collection == null) {
            this.c = null;
        } else {
            this.c = new ArrayList(collection);
        }
    }

    public AdminUpdateUserAttributesRequest a(AttributeType... attributeTypeArr) {
        if (j() == null) {
            this.c = new ArrayList(attributeTypeArr.length);
        }
        for (AttributeType attributeType : attributeTypeArr) {
            this.c.add(attributeType);
        }
        return this;
    }

    public AdminUpdateUserAttributesRequest b(Collection<AttributeType> collection) {
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
            sb.append("UserAttributes: " + j());
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
        if (obj == null || !(obj instanceof AdminUpdateUserAttributesRequest)) {
            return false;
        }
        AdminUpdateUserAttributesRequest adminUpdateUserAttributesRequest = (AdminUpdateUserAttributesRequest) obj;
        if ((adminUpdateUserAttributesRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (adminUpdateUserAttributesRequest.h() != null && !adminUpdateUserAttributesRequest.h().equals(h())) {
            return false;
        }
        if ((adminUpdateUserAttributesRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (adminUpdateUserAttributesRequest.i() != null && !adminUpdateUserAttributesRequest.i().equals(i())) {
            return false;
        }
        if ((adminUpdateUserAttributesRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        return adminUpdateUserAttributesRequest.j() == null || adminUpdateUserAttributesRequest.j().equals(j());
    }
}
