package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AdminAddUserToGroupRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AdminAddUserToGroupRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public AdminAddUserToGroupRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public AdminAddUserToGroupRequest f(String str) {
        this.c = str;
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
            sb.append("GroupName: " + j());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() != null ? j().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AdminAddUserToGroupRequest)) {
            return false;
        }
        AdminAddUserToGroupRequest adminAddUserToGroupRequest = (AdminAddUserToGroupRequest) obj;
        if ((adminAddUserToGroupRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (adminAddUserToGroupRequest.h() != null && !adminAddUserToGroupRequest.h().equals(h())) {
            return false;
        }
        if ((adminAddUserToGroupRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (adminAddUserToGroupRequest.i() != null && !adminAddUserToGroupRequest.i().equals(i())) {
            return false;
        }
        if ((adminAddUserToGroupRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        return adminAddUserToGroupRequest.j() == null || adminAddUserToGroupRequest.j().equals(j());
    }
}
