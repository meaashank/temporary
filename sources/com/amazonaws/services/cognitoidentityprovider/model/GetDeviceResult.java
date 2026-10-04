package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class GetDeviceResult implements Serializable {
    private DeviceType a;

    public DeviceType a() {
        return this.a;
    }

    public void a(DeviceType deviceType) {
        this.a = deviceType;
    }

    public GetDeviceResult b(DeviceType deviceType) {
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
        if (obj == null || !(obj instanceof GetDeviceResult)) {
            return false;
        }
        GetDeviceResult getDeviceResult = (GetDeviceResult) obj;
        if ((getDeviceResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return getDeviceResult.a() == null || getDeviceResult.a().equals(a());
    }
}
