package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class UpdateGroupRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;
    private String d;
    private Integer e;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UpdateGroupRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public UpdateGroupRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public UpdateGroupRequest f(String str) {
        this.c = str;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public UpdateGroupRequest h(String str) {
        this.d = str;
        return this;
    }

    public Integer l() {
        return this.e;
    }

    public void a(Integer num) {
        this.e = num;
    }

    public UpdateGroupRequest b(Integer num) {
        this.e = num;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("GroupName: " + h() + ",");
        }
        if (i() != null) {
            sb.append("UserPoolId: " + i() + ",");
        }
        if (j() != null) {
            sb.append("Description: " + j() + ",");
        }
        if (k() != null) {
            sb.append("RoleArn: " + k() + ",");
        }
        if (l() != null) {
            sb.append("Precedence: " + l());
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
        if (obj == null || !(obj instanceof UpdateGroupRequest)) {
            return false;
        }
        UpdateGroupRequest updateGroupRequest = (UpdateGroupRequest) obj;
        if ((updateGroupRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (updateGroupRequest.h() != null && !updateGroupRequest.h().equals(h())) {
            return false;
        }
        if ((updateGroupRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (updateGroupRequest.i() != null && !updateGroupRequest.i().equals(i())) {
            return false;
        }
        if ((updateGroupRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (updateGroupRequest.j() != null && !updateGroupRequest.j().equals(j())) {
            return false;
        }
        if ((updateGroupRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (updateGroupRequest.k() != null && !updateGroupRequest.k().equals(k())) {
            return false;
        }
        if ((updateGroupRequest.l() == null) ^ (l() == null)) {
            return false;
        }
        return updateGroupRequest.l() == null || updateGroupRequest.l().equals(l());
    }
}
