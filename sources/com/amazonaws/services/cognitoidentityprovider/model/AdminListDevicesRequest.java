package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AdminListDevicesRequest extends AmazonWebServiceRequest implements Serializable {
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

    public AdminListDevicesRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public AdminListDevicesRequest d(String str) {
        this.b = str;
        return this;
    }

    public Integer j() {
        return this.c;
    }

    public void a(Integer num) {
        this.c = num;
    }

    public AdminListDevicesRequest b(Integer num) {
        this.c = num;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void e(String str) {
        this.d = str;
    }

    public AdminListDevicesRequest f(String str) {
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
            sb.append("Username: " + i() + ",");
        }
        if (j() != null) {
            sb.append("Limit: " + j() + ",");
        }
        if (k() != null) {
            sb.append("PaginationToken: " + k());
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
        if (obj == null || !(obj instanceof AdminListDevicesRequest)) {
            return false;
        }
        AdminListDevicesRequest adminListDevicesRequest = (AdminListDevicesRequest) obj;
        if ((adminListDevicesRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (adminListDevicesRequest.h() != null && !adminListDevicesRequest.h().equals(h())) {
            return false;
        }
        if ((adminListDevicesRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (adminListDevicesRequest.i() != null && !adminListDevicesRequest.i().equals(i())) {
            return false;
        }
        if ((adminListDevicesRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (adminListDevicesRequest.j() != null && !adminListDevicesRequest.j().equals(j())) {
            return false;
        }
        if ((adminListDevicesRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        return adminListDevicesRequest.k() == null || adminListDevicesRequest.k().equals(k());
    }
}
