package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AdminUpdateDeviceStatusRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;
    private String d;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AdminUpdateDeviceStatusRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public AdminUpdateDeviceStatusRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public AdminUpdateDeviceStatusRequest f(String str) {
        this.c = str;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public AdminUpdateDeviceStatusRequest h(String str) {
        this.d = str;
        return this;
    }

    public void a(DeviceRememberedStatusType deviceRememberedStatusType) {
        this.d = deviceRememberedStatusType.toString();
    }

    public AdminUpdateDeviceStatusRequest b(DeviceRememberedStatusType deviceRememberedStatusType) {
        this.d = deviceRememberedStatusType.toString();
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
            sb.append("DeviceKey: " + j() + ",");
        }
        if (k() != null) {
            sb.append("DeviceRememberedStatus: " + k());
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
        if (obj == null || !(obj instanceof AdminUpdateDeviceStatusRequest)) {
            return false;
        }
        AdminUpdateDeviceStatusRequest adminUpdateDeviceStatusRequest = (AdminUpdateDeviceStatusRequest) obj;
        if ((adminUpdateDeviceStatusRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (adminUpdateDeviceStatusRequest.h() != null && !adminUpdateDeviceStatusRequest.h().equals(h())) {
            return false;
        }
        if ((adminUpdateDeviceStatusRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (adminUpdateDeviceStatusRequest.i() != null && !adminUpdateDeviceStatusRequest.i().equals(i())) {
            return false;
        }
        if ((adminUpdateDeviceStatusRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (adminUpdateDeviceStatusRequest.j() != null && !adminUpdateDeviceStatusRequest.j().equals(j())) {
            return false;
        }
        if ((adminUpdateDeviceStatusRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        return adminUpdateDeviceStatusRequest.k() == null || adminUpdateDeviceStatusRequest.k().equals(k());
    }
}
