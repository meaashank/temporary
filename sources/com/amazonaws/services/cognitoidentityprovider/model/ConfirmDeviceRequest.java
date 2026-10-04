package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ConfirmDeviceRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private DeviceSecretVerifierConfigType c;
    private String d;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public ConfirmDeviceRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public ConfirmDeviceRequest d(String str) {
        this.b = str;
        return this;
    }

    public DeviceSecretVerifierConfigType j() {
        return this.c;
    }

    public void a(DeviceSecretVerifierConfigType deviceSecretVerifierConfigType) {
        this.c = deviceSecretVerifierConfigType;
    }

    public ConfirmDeviceRequest b(DeviceSecretVerifierConfigType deviceSecretVerifierConfigType) {
        this.c = deviceSecretVerifierConfigType;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void e(String str) {
        this.d = str;
    }

    public ConfirmDeviceRequest f(String str) {
        this.d = str;
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
            sb.append("DeviceSecretVerifierConfig: " + j() + ",");
        }
        if (k() != null) {
            sb.append("DeviceName: " + k());
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
        if (obj == null || !(obj instanceof ConfirmDeviceRequest)) {
            return false;
        }
        ConfirmDeviceRequest confirmDeviceRequest = (ConfirmDeviceRequest) obj;
        if ((confirmDeviceRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (confirmDeviceRequest.h() != null && !confirmDeviceRequest.h().equals(h())) {
            return false;
        }
        if ((confirmDeviceRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (confirmDeviceRequest.i() != null && !confirmDeviceRequest.i().equals(i())) {
            return false;
        }
        if ((confirmDeviceRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (confirmDeviceRequest.j() != null && !confirmDeviceRequest.j().equals(j())) {
            return false;
        }
        if ((confirmDeviceRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        return confirmDeviceRequest.k() == null || confirmDeviceRequest.k().equals(k());
    }
}
