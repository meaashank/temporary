package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ListUsersResult implements Serializable {
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

    public ListUsersResult a(UserType... userTypeArr) {
        if (a() == null) {
            this.a = new ArrayList(userTypeArr.length);
        }
        for (UserType userType : userTypeArr) {
            this.a.add(userType);
        }
        return this;
    }

    public ListUsersResult b(Collection<UserType> collection) {
        a(collection);
        return this;
    }

    public String b() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public ListUsersResult b(String str) {
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
            sb.append("PaginationToken: " + b());
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
        if (obj == null || !(obj instanceof ListUsersResult)) {
            return false;
        }
        ListUsersResult listUsersResult = (ListUsersResult) obj;
        if ((listUsersResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (listUsersResult.a() != null && !listUsersResult.a().equals(a())) {
            return false;
        }
        if ((listUsersResult.b() == null) ^ (b() == null)) {
            return false;
        }
        return listUsersResult.b() == null || listUsersResult.b().equals(b());
    }
}
