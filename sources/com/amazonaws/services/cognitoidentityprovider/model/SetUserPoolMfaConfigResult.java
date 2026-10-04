package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class SetUserPoolMfaConfigResult implements Serializable {
    private SmsMfaConfigType a;
    private SoftwareTokenMfaConfigType b;
    private String c;

    public SmsMfaConfigType a() {
        return this.a;
    }

    public void a(SmsMfaConfigType smsMfaConfigType) {
        this.a = smsMfaConfigType;
    }

    public SetUserPoolMfaConfigResult b(SmsMfaConfigType smsMfaConfigType) {
        this.a = smsMfaConfigType;
        return this;
    }

    public SoftwareTokenMfaConfigType b() {
        return this.b;
    }

    public void a(SoftwareTokenMfaConfigType softwareTokenMfaConfigType) {
        this.b = softwareTokenMfaConfigType;
    }

    public SetUserPoolMfaConfigResult b(SoftwareTokenMfaConfigType softwareTokenMfaConfigType) {
        this.b = softwareTokenMfaConfigType;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void a(String str) {
        this.c = str;
    }

    public SetUserPoolMfaConfigResult b(String str) {
        this.c = str;
        return this;
    }

    public void a(UserPoolMfaType userPoolMfaType) {
        this.c = userPoolMfaType.toString();
    }

    public SetUserPoolMfaConfigResult b(UserPoolMfaType userPoolMfaType) {
        this.c = userPoolMfaType.toString();
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("SmsMfaConfiguration: " + a() + ",");
        }
        if (b() != null) {
            sb.append("SoftwareTokenMfaConfiguration: " + b() + ",");
        }
        if (c() != null) {
            sb.append("MfaConfiguration: " + c());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() != null ? c().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SetUserPoolMfaConfigResult)) {
            return false;
        }
        SetUserPoolMfaConfigResult setUserPoolMfaConfigResult = (SetUserPoolMfaConfigResult) obj;
        if ((setUserPoolMfaConfigResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (setUserPoolMfaConfigResult.a() != null && !setUserPoolMfaConfigResult.a().equals(a())) {
            return false;
        }
        if ((setUserPoolMfaConfigResult.b() == null) ^ (b() == null)) {
            return false;
        }
        if (setUserPoolMfaConfigResult.b() != null && !setUserPoolMfaConfigResult.b().equals(b())) {
            return false;
        }
        if ((setUserPoolMfaConfigResult.c() == null) ^ (c() == null)) {
            return false;
        }
        return setUserPoolMfaConfigResult.c() == null || setUserPoolMfaConfigResult.c().equals(c());
    }
}
