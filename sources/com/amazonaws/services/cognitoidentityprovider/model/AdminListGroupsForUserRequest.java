package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AdminListGroupsForUserRequest extends AmazonWebServiceRequest implements Serializable {
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

    public AdminListGroupsForUserRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public AdminListGroupsForUserRequest d(String str) {
        this.b = str;
        return this;
    }

    public Integer j() {
        return this.c;
    }

    public void a(Integer num) {
        this.c = num;
    }

    public AdminListGroupsForUserRequest b(Integer num) {
        this.c = num;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void e(String str) {
        this.d = str;
    }

    public AdminListGroupsForUserRequest f(String str) {
        this.d = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("Username: " + h() + ",");
        }
        if (i() != null) {
            sb.append("UserPoolId: " + i() + ",");
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
        if (obj == null || !(obj instanceof AdminListGroupsForUserRequest)) {
            return false;
        }
        AdminListGroupsForUserRequest adminListGroupsForUserRequest = (AdminListGroupsForUserRequest) obj;
        if ((adminListGroupsForUserRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (adminListGroupsForUserRequest.h() != null && !adminListGroupsForUserRequest.h().equals(h())) {
            return false;
        }
        if ((adminListGroupsForUserRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (adminListGroupsForUserRequest.i() != null && !adminListGroupsForUserRequest.i().equals(i())) {
            return false;
        }
        if ((adminListGroupsForUserRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (adminListGroupsForUserRequest.j() != null && !adminListGroupsForUserRequest.j().equals(j())) {
            return false;
        }
        if ((adminListGroupsForUserRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        return adminListGroupsForUserRequest.k() == null || adminListGroupsForUserRequest.k().equals(k());
    }
}
