package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ListUserPoolsResult implements Serializable {
    private List<UserPoolDescriptionType> a;
    private String b;

    public List<UserPoolDescriptionType> a() {
        return this.a;
    }

    public void a(Collection<UserPoolDescriptionType> collection) {
        if (collection == null) {
            this.a = null;
        } else {
            this.a = new ArrayList(collection);
        }
    }

    public ListUserPoolsResult a(UserPoolDescriptionType... userPoolDescriptionTypeArr) {
        if (a() == null) {
            this.a = new ArrayList(userPoolDescriptionTypeArr.length);
        }
        for (UserPoolDescriptionType userPoolDescriptionType : userPoolDescriptionTypeArr) {
            this.a.add(userPoolDescriptionType);
        }
        return this;
    }

    public ListUserPoolsResult b(Collection<UserPoolDescriptionType> collection) {
        a(collection);
        return this;
    }

    public String b() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public ListUserPoolsResult b(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("UserPools: " + a() + ",");
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
        if (obj == null || !(obj instanceof ListUserPoolsResult)) {
            return false;
        }
        ListUserPoolsResult listUserPoolsResult = (ListUserPoolsResult) obj;
        if ((listUserPoolsResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (listUserPoolsResult.a() != null && !listUserPoolsResult.a().equals(a())) {
            return false;
        }
        if ((listUserPoolsResult.b() == null) ^ (b() == null)) {
            return false;
        }
        return listUserPoolsResult.b() == null || listUserPoolsResult.b().equals(b());
    }
}
