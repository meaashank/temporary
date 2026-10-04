package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class UpdateUserAttributesRequest extends AmazonWebServiceRequest implements Serializable {
    private List<AttributeType> a;
    private String b;

    public List<AttributeType> h() {
        return this.a;
    }

    public void a(Collection<AttributeType> collection) {
        if (collection == null) {
            this.a = null;
        } else {
            this.a = new ArrayList(collection);
        }
    }

    public UpdateUserAttributesRequest a(AttributeType... attributeTypeArr) {
        if (h() == null) {
            this.a = new ArrayList(attributeTypeArr.length);
        }
        for (AttributeType attributeType : attributeTypeArr) {
            this.a.add(attributeType);
        }
        return this;
    }

    public UpdateUserAttributesRequest b(Collection<AttributeType> collection) {
        a(collection);
        return this;
    }

    public String i() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public UpdateUserAttributesRequest b(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserAttributes: " + h() + ",");
        }
        if (i() != null) {
            sb.append("AccessToken: " + i());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() != null ? i().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UpdateUserAttributesRequest)) {
            return false;
        }
        UpdateUserAttributesRequest updateUserAttributesRequest = (UpdateUserAttributesRequest) obj;
        if ((updateUserAttributesRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (updateUserAttributesRequest.h() != null && !updateUserAttributesRequest.h().equals(h())) {
            return false;
        }
        if ((updateUserAttributesRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        return updateUserAttributesRequest.i() == null || updateUserAttributesRequest.i().equals(i());
    }
}
