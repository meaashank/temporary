package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class CreateGroupRequest extends AmazonWebServiceRequest implements Serializable {
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

    public CreateGroupRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public CreateGroupRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public CreateGroupRequest f(String str) {
        this.c = str;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public CreateGroupRequest h(String str) {
        this.d = str;
        return this;
    }

    public Integer l() {
        return this.e;
    }

    public void a(Integer num) {
        this.e = num;
    }

    public CreateGroupRequest b(Integer num) {
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
        if (obj == null || !(obj instanceof CreateGroupRequest)) {
            return false;
        }
        CreateGroupRequest createGroupRequest = (CreateGroupRequest) obj;
        if ((createGroupRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (createGroupRequest.h() != null && !createGroupRequest.h().equals(h())) {
            return false;
        }
        if ((createGroupRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (createGroupRequest.i() != null && !createGroupRequest.i().equals(i())) {
            return false;
        }
        if ((createGroupRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (createGroupRequest.j() != null && !createGroupRequest.j().equals(j())) {
            return false;
        }
        if ((createGroupRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (createGroupRequest.k() != null && !createGroupRequest.k().equals(k())) {
            return false;
        }
        if ((createGroupRequest.l() == null) ^ (l() == null)) {
            return false;
        }
        return createGroupRequest.l() == null || createGroupRequest.l().equals(l());
    }
}
