package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdminCreateUserRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private List<AttributeType> c;
    private List<AttributeType> d;
    private String e;
    private Boolean f;
    private String g;
    private List<String> h;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AdminCreateUserRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public AdminCreateUserRequest d(String str) {
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

    public AdminCreateUserRequest a(AttributeType... attributeTypeArr) {
        if (j() == null) {
            this.c = new ArrayList(attributeTypeArr.length);
        }
        for (AttributeType attributeType : attributeTypeArr) {
            this.c.add(attributeType);
        }
        return this;
    }

    public AdminCreateUserRequest b(Collection<AttributeType> collection) {
        a(collection);
        return this;
    }

    public List<AttributeType> k() {
        return this.d;
    }

    public void c(Collection<AttributeType> collection) {
        if (collection == null) {
            this.d = null;
        } else {
            this.d = new ArrayList(collection);
        }
    }

    public AdminCreateUserRequest b(AttributeType... attributeTypeArr) {
        if (k() == null) {
            this.d = new ArrayList(attributeTypeArr.length);
        }
        for (AttributeType attributeType : attributeTypeArr) {
            this.d.add(attributeType);
        }
        return this;
    }

    public AdminCreateUserRequest d(Collection<AttributeType> collection) {
        c(collection);
        return this;
    }

    public String l() {
        return this.e;
    }

    public void e(String str) {
        this.e = str;
    }

    public AdminCreateUserRequest f(String str) {
        this.e = str;
        return this;
    }

    public Boolean m() {
        return this.f;
    }

    public Boolean n() {
        return this.f;
    }

    public void a(Boolean bool) {
        this.f = bool;
    }

    public AdminCreateUserRequest b(Boolean bool) {
        this.f = bool;
        return this;
    }

    public String o() {
        return this.g;
    }

    public void g(String str) {
        this.g = str;
    }

    public AdminCreateUserRequest h(String str) {
        this.g = str;
        return this;
    }

    public void a(MessageActionType messageActionType) {
        this.g = messageActionType.toString();
    }

    public AdminCreateUserRequest b(MessageActionType messageActionType) {
        this.g = messageActionType.toString();
        return this;
    }

    public List<String> p() {
        return this.h;
    }

    public void e(Collection<String> collection) {
        if (collection == null) {
            this.h = null;
        } else {
            this.h = new ArrayList(collection);
        }
    }

    public AdminCreateUserRequest a(String... strArr) {
        if (p() == null) {
            this.h = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.h.add(str);
        }
        return this;
    }

    public AdminCreateUserRequest f(Collection<String> collection) {
        e(collection);
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
            sb.append("UserAttributes: " + j() + ",");
        }
        if (k() != null) {
            sb.append("ValidationData: " + k() + ",");
        }
        if (l() != null) {
            sb.append("TemporaryPassword: " + l() + ",");
        }
        if (n() != null) {
            sb.append("ForceAliasCreation: " + n() + ",");
        }
        if (o() != null) {
            sb.append("MessageAction: " + o() + ",");
        }
        if (p() != null) {
            sb.append("DesiredDeliveryMediums: " + p());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (l() == null ? 0 : l().hashCode())) * 31) + (n() == null ? 0 : n().hashCode())) * 31) + (o() == null ? 0 : o().hashCode())) * 31) + (p() != null ? p().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AdminCreateUserRequest)) {
            return false;
        }
        AdminCreateUserRequest adminCreateUserRequest = (AdminCreateUserRequest) obj;
        if ((adminCreateUserRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (adminCreateUserRequest.h() != null && !adminCreateUserRequest.h().equals(h())) {
            return false;
        }
        if ((adminCreateUserRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (adminCreateUserRequest.i() != null && !adminCreateUserRequest.i().equals(i())) {
            return false;
        }
        if ((adminCreateUserRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (adminCreateUserRequest.j() != null && !adminCreateUserRequest.j().equals(j())) {
            return false;
        }
        if ((adminCreateUserRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (adminCreateUserRequest.k() != null && !adminCreateUserRequest.k().equals(k())) {
            return false;
        }
        if ((adminCreateUserRequest.l() == null) ^ (l() == null)) {
            return false;
        }
        if (adminCreateUserRequest.l() != null && !adminCreateUserRequest.l().equals(l())) {
            return false;
        }
        if ((adminCreateUserRequest.n() == null) ^ (n() == null)) {
            return false;
        }
        if (adminCreateUserRequest.n() != null && !adminCreateUserRequest.n().equals(n())) {
            return false;
        }
        if ((adminCreateUserRequest.o() == null) ^ (o() == null)) {
            return false;
        }
        if (adminCreateUserRequest.o() != null && !adminCreateUserRequest.o().equals(o())) {
            return false;
        }
        if ((adminCreateUserRequest.p() == null) ^ (p() == null)) {
            return false;
        }
        return adminCreateUserRequest.p() == null || adminCreateUserRequest.p().equals(p());
    }
}
