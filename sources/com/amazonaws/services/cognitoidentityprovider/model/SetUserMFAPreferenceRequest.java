package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class SetUserMFAPreferenceRequest extends AmazonWebServiceRequest implements Serializable {
    private SMSMfaSettingsType a;
    private SoftwareTokenMfaSettingsType b;
    private String c;

    public SMSMfaSettingsType h() {
        return this.a;
    }

    public void a(SMSMfaSettingsType sMSMfaSettingsType) {
        this.a = sMSMfaSettingsType;
    }

    public SetUserMFAPreferenceRequest b(SMSMfaSettingsType sMSMfaSettingsType) {
        this.a = sMSMfaSettingsType;
        return this;
    }

    public SoftwareTokenMfaSettingsType i() {
        return this.b;
    }

    public void a(SoftwareTokenMfaSettingsType softwareTokenMfaSettingsType) {
        this.b = softwareTokenMfaSettingsType;
    }

    public SetUserMFAPreferenceRequest b(SoftwareTokenMfaSettingsType softwareTokenMfaSettingsType) {
        this.b = softwareTokenMfaSettingsType;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void a(String str) {
        this.c = str;
    }

    public SetUserMFAPreferenceRequest b(String str) {
        this.c = str;
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
            sb.append("AccessToken: " + j());
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
        if (obj == null || !(obj instanceof SetUserMFAPreferenceRequest)) {
            return false;
        }
        SetUserMFAPreferenceRequest setUserMFAPreferenceRequest = (SetUserMFAPreferenceRequest) obj;
        if ((setUserMFAPreferenceRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (setUserMFAPreferenceRequest.h() != null && !setUserMFAPreferenceRequest.h().equals(h())) {
            return false;
        }
        if ((setUserMFAPreferenceRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (setUserMFAPreferenceRequest.i() != null && !setUserMFAPreferenceRequest.i().equals(i())) {
            return false;
        }
        if ((setUserMFAPreferenceRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        return setUserMFAPreferenceRequest.j() == null || setUserMFAPreferenceRequest.j().equals(j());
    }
}
