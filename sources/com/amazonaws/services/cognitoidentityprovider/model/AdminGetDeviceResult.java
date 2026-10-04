package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AdminGetDeviceResult implements Serializable {
    private DeviceType a;

    public DeviceType a() {
        return this.a;
    }

    public void a(DeviceType deviceType) {
        this.a = deviceType;
    }

    public AdminGetDeviceResult b(DeviceType deviceType) {
        this.a = deviceType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("Device: " + a());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return 31 + (a() == null ? 0 : a().hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AdminGetDeviceResult)) {
            return false;
        }
        AdminGetDeviceResult adminGetDeviceResult = (AdminGetDeviceResult) obj;
        if ((adminGetDeviceResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return adminGetDeviceResult.a() == null || adminGetDeviceResult.a().equals(a());
    }
}
