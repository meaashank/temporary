package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ListUsersInGroupResult implements Serializable {
    private List<UserType> a;
    private String b;

    public List<UserType> a() {
        return this.a;
    }

    public void a(Collection<UserType> collection) {
        if (collection == null) {
            this.a = null;
        } else {
            this.a = new ArrayList(collection);
        }
    }

    public ListUsersInGroupResult a(UserType... userTypeArr) {
        if (a() == null) {
            this.a = new ArrayList(userTypeArr.length);
        }
        for (UserType userType : userTypeArr) {
            this.a.add(userType);
        }
        return this;
    }

    public ListUsersInGroupResult b(Collection<UserType> collection) {
        a(collection);
        return this;
    }

    public String b() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public ListUsersInGroupResult b(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("Users: " + a() + ",");
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
        if (obj == null || !(obj instanceof ListUsersInGroupResult)) {
            return false;
        }
        ListUsersInGroupResult listUsersInGroupResult = (ListUsersInGroupResult) obj;
        if ((listUsersInGroupResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (listUsersInGroupResult.a() != null && !listUsersInGroupResult.a().equals(a())) {
            return false;
        }
        if ((listUsersInGroupResult.b() == null) ^ (b() == null)) {
            return false;
        }
        return listUsersInGroupResult.b() == null || listUsersInGroupResult.b().equals(b());
    }
}
