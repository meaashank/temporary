package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ListUsersInGroupRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private Integer c;
    private String d;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public ListUsersInGroupRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public ListUsersInGroupRequest d(String str) {
        this.b = str;
        return this;
    }

    public Integer j() {
        return this.c;
    }

    public void a(Integer num) {
        this.c = num;
    }

    public ListUsersInGroupRequest b(Integer num) {
        this.c = num;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void e(String str) {
        this.d = str;
    }

    public ListUsersInGroupRequest f(String str) {
        this.d = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("GroupName: " + i() + ",");
        }
        if (j() != null) {
            sb.append("Limit: " + j() + ",");
        }
        if (k() != null) {
            sb.append("NextToken: " + k());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() != null ? k().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ListUsersInGroupRequest)) {
            return false;
        }
        ListUsersInGroupRequest listUsersInGroupRequest = (ListUsersInGroupRequest) obj;
        if ((listUsersInGroupRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (listUsersInGroupRequest.h() != null && !listUsersInGroupRequest.h().equals(h())) {
            return false;
        }
        if ((listUsersInGroupRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (listUsersInGroupRequest.i() != null && !listUsersInGroupRequest.i().equals(i())) {
            return false;
        }
        if ((listUsersInGroupRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (listUsersInGroupRequest.j() != null && !listUsersInGroupRequest.j().equals(j())) {
            return false;
        }
        if ((listUsersInGroupRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        return listUsersInGroupRequest.k() == null || listUsersInGroupRequest.k().equals(k());
    }
}
