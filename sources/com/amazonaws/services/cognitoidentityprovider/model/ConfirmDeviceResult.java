package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ConfirmDeviceResult implements Serializable {
    private Boolean a;

    public Boolean a() {
        return this.a;
    }

    public Boolean b() {
        return this.a;
    }

    public void a(Boolean bool) {
        this.a = bool;
    }

    public ConfirmDeviceResult b(Boolean bool) {
        this.a = bool;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (b() != null) {
            sb.append("UserConfirmationNecessary: " + b());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return 31 + (b() == null ? 0 : b().hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ConfirmDeviceResult)) {
            return false;
        }
        ConfirmDeviceResult confirmDeviceResult = (ConfirmDeviceResult) obj;
        if ((confirmDeviceResult.b() == null) ^ (b() == null)) {
            return false;
        }
        return confirmDeviceResult.b() == null || confirmDeviceResult.b().equals(b());
    }
}
