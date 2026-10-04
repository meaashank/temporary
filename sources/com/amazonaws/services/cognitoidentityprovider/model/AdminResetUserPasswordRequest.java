package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AdminResetUserPasswordRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AdminResetUserPasswordRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public AdminResetUserPasswordRequest d(String str) {
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
        if (obj == null || !(obj instanceof AdminResetUserPasswordRequest)) {
            return false;
        }
        AdminResetUserPasswordRequest adminResetUserPasswordRequest = (AdminResetUserPasswordRequest) obj;
        if ((adminResetUserPasswordRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (adminResetUserPasswordRequest.h() != null && !adminResetUserPasswordRequest.h().equals(h())) {
            return false;
        }
        if ((adminResetUserPasswordRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        return adminResetUserPasswordRequest.i() == null || adminResetUserPasswordRequest.i().equals(i());
    }
}
