package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class SetUserPoolMfaConfigRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private SmsMfaConfigType b;
    private SoftwareTokenMfaConfigType c;
    private String d;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public SetUserPoolMfaConfigRequest b(String str) {
        this.a = str;
        return this;
    }

    public SmsMfaConfigType i() {
        return this.b;
    }

    public void a(SmsMfaConfigType smsMfaConfigType) {
        this.b = smsMfaConfigType;
    }

    public SetUserPoolMfaConfigRequest b(SmsMfaConfigType smsMfaConfigType) {
        this.b = smsMfaConfigType;
        return this;
    }

    public SoftwareTokenMfaConfigType j() {
        return this.c;
    }

    public void a(SoftwareTokenMfaConfigType softwareTokenMfaConfigType) {
        this.c = softwareTokenMfaConfigType;
    }

    public SetUserPoolMfaConfigRequest b(SoftwareTokenMfaConfigType softwareTokenMfaConfigType) {
        this.c = softwareTokenMfaConfigType;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void c(String str) {
        this.d = str;
    }

    public SetUserPoolMfaConfigRequest d(String str) {
        this.d = str;
        return this;
    }

    public void a(UserPoolMfaType userPoolMfaType) {
        this.d = userPoolMfaType.toString();
    }

    public SetUserPoolMfaConfigRequest b(UserPoolMfaType userPoolMfaType) {
        this.d = userPoolMfaType.toString();
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("SmsMfaConfiguration: " + i() + ",");
        }
        if (j() != null) {
            sb.append("SoftwareTokenMfaConfiguration: " + j() + ",");
        }
        if (k() != null) {
            sb.append("MfaConfiguration: " + k());
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
        if (obj == null || !(obj instanceof SetUserPoolMfaConfigRequest)) {
            return false;
        }
        SetUserPoolMfaConfigRequest setUserPoolMfaConfigRequest = (SetUserPoolMfaConfigRequest) obj;
        if ((setUserPoolMfaConfigRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (setUserPoolMfaConfigRequest.h() != null && !setUserPoolMfaConfigRequest.h().equals(h())) {
            return false;
        }
        if ((setUserPoolMfaConfigRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (setUserPoolMfaConfigRequest.i() != null && !setUserPoolMfaConfigRequest.i().equals(i())) {
            return false;
        }
        if ((setUserPoolMfaConfigRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (setUserPoolMfaConfigRequest.j() != null && !setUserPoolMfaConfigRequest.j().equals(j())) {
            return false;
        }
        if ((setUserPoolMfaConfigRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        return setUserPoolMfaConfigRequest.k() == null || setUserPoolMfaConfigRequest.k().equals(k());
    }
}
