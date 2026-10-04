package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AdminUserGlobalSignOutRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AdminUserGlobalSignOutRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public AdminUserGlobalSignOutRequest d(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("Username: " + i());
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
        if (obj == null || !(obj instanceof AdminUserGlobalSignOutRequest)) {
            return false;
        }
        AdminUserGlobalSignOutRequest adminUserGlobalSignOutRequest = (AdminUserGlobalSignOutRequest) obj;
        if ((adminUserGlobalSignOutRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (adminUserGlobalSignOutRequest.h() != null && !adminUserGlobalSignOutRequest.h().equals(h())) {
            return false;
        }
        if ((adminUserGlobalSignOutRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        return adminUserGlobalSignOutRequest.i() == null || adminUserGlobalSignOutRequest.i().equals(i());
    }
}
