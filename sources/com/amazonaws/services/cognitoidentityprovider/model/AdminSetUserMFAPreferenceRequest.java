package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AdminSetUserMFAPreferenceRequest extends AmazonWebServiceRequest implements Serializable {
    private SMSMfaSettingsType a;
    private SoftwareTokenMfaSettingsType b;
    private String c;
    private String d;

    public SMSMfaSettingsType h() {
        return this.a;
    }

    public void a(SMSMfaSettingsType sMSMfaSettingsType) {
        this.a = sMSMfaSettingsType;
    }

    public AdminSetUserMFAPreferenceRequest b(SMSMfaSettingsType sMSMfaSettingsType) {
        this.a = sMSMfaSettingsType;
        return this;
    }

    public SoftwareTokenMfaSettingsType i() {
        return this.b;
    }

    public void a(SoftwareTokenMfaSettingsType softwareTokenMfaSettingsType) {
        this.b = softwareTokenMfaSettingsType;
    }

    public AdminSetUserMFAPreferenceRequest b(SoftwareTokenMfaSettingsType softwareTokenMfaSettingsType) {
        this.b = softwareTokenMfaSettingsType;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void a(String str) {
        this.c = str;
    }

    public AdminSetUserMFAPreferenceRequest b(String str) {
        this.c = str;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void c(String str) {
        this.d = str;
    }

    public AdminSetUserMFAPreferenceRequest d(String str) {
        this.d = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("SMSMfaSettings: " + h() + ",");
        }
        if (i() != null) {
            sb.append("SoftwareTokenMfaSettings: " + i() + ",");
        }
        if (j() != null) {
            sb.append("Username: " + j() + ",");
        }
        if (k() != null) {
            sb.append("UserPoolId: " + k());
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
        if (obj == null || !(obj instanceof AdminSetUserMFAPreferenceRequest)) {
            return false;
        }
        AdminSetUserMFAPreferenceRequest adminSetUserMFAPreferenceRequest = (AdminSetUserMFAPreferenceRequest) obj;
        if ((adminSetUserMFAPreferenceRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (adminSetUserMFAPreferenceRequest.h() != null && !adminSetUserMFAPreferenceRequest.h().equals(h())) {
            return false;
        }
        if ((adminSetUserMFAPreferenceRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (adminSetUserMFAPreferenceRequest.i() != null && !adminSetUserMFAPreferenceRequest.i().equals(i())) {
            return false;
        }
        if ((adminSetUserMFAPreferenceRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (adminSetUserMFAPreferenceRequest.j() != null && !adminSetUserMFAPreferenceRequest.j().equals(j())) {
            return false;
        }
        if ((adminSetUserMFAPreferenceRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        return adminSetUserMFAPreferenceRequest.k() == null || adminSetUserMFAPreferenceRequest.k().equals(k());
    }
}
