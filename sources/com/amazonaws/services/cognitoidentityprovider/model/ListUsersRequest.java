package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ListUsersRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private List<String> b;
    private Integer c;
    private String d;
    private String e;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public ListUsersRequest b(String str) {
        this.a = str;
        return this;
    }

    public List<String> i() {
        return this.b;
    }

    public void a(Collection<String> collection) {
        if (collection == null) {
            this.b = null;
        } else {
            this.b = new ArrayList(collection);
        }
    }

    public ListUsersRequest a(String... strArr) {
        if (i() == null) {
            this.b = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.b.add(str);
        }
        return this;
    }

    public ListUsersRequest b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public Integer j() {
        return this.c;
    }

    public void a(Integer num) {
        this.c = num;
    }

    public ListUsersRequest b(Integer num) {
        this.c = num;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void c(String str) {
        this.d = str;
    }

    public ListUsersRequest d(String str) {
        this.d = str;
        return this;
    }

    public String l() {
        return this.e;
    }

    public void e(String str) {
        this.e = str;
    }

    public ListUsersRequest f(String str) {
        this.e = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("AttributesToGet: " + i() + ",");
        }
        if (j() != null) {
            sb.append("Limit: " + j() + ",");
        }
        if (k() != null) {
            sb.append("PaginationToken: " + k() + ",");
        }
        if (l() != null) {
            sb.append("Filter: " + l());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (l() != null ? l().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ListUsersRequest)) {
            return false;
        }
        ListUsersRequest listUsersRequest = (ListUsersRequest) obj;
        if ((listUsersRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (listUsersRequest.h() != null && !listUsersRequest.h().equals(h())) {
            return false;
        }
        if ((listUsersRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (listUsersRequest.i() != null && !listUsersRequest.i().equals(i())) {
            return false;
        }
        if ((listUsersRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (listUsersRequest.j() != null && !listUsersRequest.j().equals(j())) {
            return false;
        }
        if ((listUsersRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (listUsersRequest.k() != null && !listUsersRequest.k().equals(k())) {
            return false;
        }
        if ((listUsersRequest.l() == null) ^ (l() == null)) {
            return false;
        }
        return listUsersRequest.l() == null || listUsersRequest.l().equals(l());
    }
}
