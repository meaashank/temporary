package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DeleteUserAttributesRequest extends AmazonWebServiceRequest implements Serializable {
    private List<String> a;
    private String b;

    public List<String> h() {
        return this.a;
    }

    public void a(Collection<String> collection) {
        if (collection == null) {
            this.a = null;
        } else {
            this.a = new ArrayList(collection);
        }
    }

    public DeleteUserAttributesRequest a(String... strArr) {
        if (h() == null) {
            this.a = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.a.add(str);
        }
        return this;
    }

    public DeleteUserAttributesRequest b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public String i() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public DeleteUserAttributesRequest b(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserAttributeNames: " + h() + ",");
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
        if (obj == null || !(obj instanceof DeleteUserAttributesRequest)) {
            return false;
        }
        DeleteUserAttributesRequest deleteUserAttributesRequest = (DeleteUserAttributesRequest) obj;
        if ((deleteUserAttributesRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (deleteUserAttributesRequest.h() != null && !deleteUserAttributesRequest.h().equals(h())) {
            return false;
        }
        if ((deleteUserAttributesRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        return deleteUserAttributesRequest.i() == null || deleteUserAttributesRequest.i().equals(i());
    }
}
