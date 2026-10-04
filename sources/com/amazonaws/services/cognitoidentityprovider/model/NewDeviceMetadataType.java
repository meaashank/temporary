package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class NewDeviceMetadataType implements Serializable {
    private String a;
    private String b;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public NewDeviceMetadataType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public NewDeviceMetadataType d(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("DeviceKey: " + a() + ",");
        }
        if (b() != null) {
            sb.append("DeviceGroupKey: " + b());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() != null ? b().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof NewDeviceMetadataType)) {
            return false;
        }
        NewDeviceMetadataType newDeviceMetadataType = (NewDeviceMetadataType) obj;
        if ((newDeviceMetadataType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (newDeviceMetadataType.a() != null && !newDeviceMetadataType.a().equals(a())) {
            return false;
        }
        if ((newDeviceMetadataType.b() == null) ^ (b() == null)) {
            return false;
        }
        return newDeviceMetadataType.b() == null || newDeviceMetadataType.b().equals(b());
    }
}
