package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AdminGetDeviceRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AdminGetDeviceRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public AdminGetDeviceRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public AdminGetDeviceRequest f(String str) {
        this.c = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("DeviceKey: " + h() + ",");
        }
        if (i() != null) {
            sb.append("UserPoolId: " + i() + ",");
        }
        if (j() != null) {
            sb.append("Username: " + j());
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
        if (obj == null || !(obj instanceof AdminGetDeviceRequest)) {
            return false;
        }
        AdminGetDeviceRequest adminGetDeviceRequest = (AdminGetDeviceRequest) obj;
        if ((adminGetDeviceRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (adminGetDeviceRequest.h() != null && !adminGetDeviceRequest.h().equals(h())) {
            return false;
        }
        if ((adminGetDeviceRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (adminGetDeviceRequest.i() != null && !adminGetDeviceRequest.i().equals(i())) {
            return false;
        }
        if ((adminGetDeviceRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        return adminGetDeviceRequest.j() == null || adminGetDeviceRequest.j().equals(j());
    }
}
