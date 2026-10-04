package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class UpdateDeviceStatusRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UpdateDeviceStatusRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public UpdateDeviceStatusRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public UpdateDeviceStatusRequest f(String str) {
        this.c = str;
        return this;
    }

    public void a(DeviceRememberedStatusType deviceRememberedStatusType) {
        this.c = deviceRememberedStatusType.toString();
    }

    public UpdateDeviceStatusRequest b(DeviceRememberedStatusType deviceRememberedStatusType) {
        this.c = deviceRememberedStatusType.toString();
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("AccessToken: " + h() + ",");
        }
        if (i() != null) {
            sb.append("DeviceKey: " + i() + ",");
        }
        if (j() != null) {
            sb.append("DeviceRememberedStatus: " + j());
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
        if (obj == null || !(obj instanceof UpdateDeviceStatusRequest)) {
            return false;
        }
        UpdateDeviceStatusRequest updateDeviceStatusRequest = (UpdateDeviceStatusRequest) obj;
        if ((updateDeviceStatusRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (updateDeviceStatusRequest.h() != null && !updateDeviceStatusRequest.h().equals(h())) {
            return false;
        }
        if ((updateDeviceStatusRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (updateDeviceStatusRequest.i() != null && !updateDeviceStatusRequest.i().equals(i())) {
            return false;
        }
        if ((updateDeviceStatusRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        return updateDeviceStatusRequest.j() == null || updateDeviceStatusRequest.j().equals(j());
    }
}
