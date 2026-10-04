package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ListUserPoolClientsResult implements Serializable {
    private List<UserPoolClientDescription> a;
    private String b;

    public List<UserPoolClientDescription> a() {
        return this.a;
    }

    public void a(Collection<UserPoolClientDescription> collection) {
        if (collection == null) {
            this.a = null;
        } else {
            this.a = new ArrayList(collection);
        }
    }

    public ListUserPoolClientsResult a(UserPoolClientDescription... userPoolClientDescriptionArr) {
        if (a() == null) {
            this.a = new ArrayList(userPoolClientDescriptionArr.length);
        }
        for (UserPoolClientDescription userPoolClientDescription : userPoolClientDescriptionArr) {
            this.a.add(userPoolClientDescription);
        }
        return this;
    }

    public ListUserPoolClientsResult b(Collection<UserPoolClientDescription> collection) {
        a(collection);
        return this;
    }

    public String b() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public ListUserPoolClientsResult b(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("UserPoolClients: " + a() + ",");
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
        if (obj == null || !(obj instanceof ListUserPoolClientsResult)) {
            return false;
        }
        ListUserPoolClientsResult listUserPoolClientsResult = (ListUserPoolClientsResult) obj;
        if ((listUserPoolClientsResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (listUserPoolClientsResult.a() != null && !listUserPoolClientsResult.a().equals(a())) {
            return false;
        }
        if ((listUserPoolClientsResult.b() == null) ^ (b() == null)) {
            return false;
        }
        return listUserPoolClientsResult.b() == null || listUserPoolClientsResult.b().equals(b());
    }
}
