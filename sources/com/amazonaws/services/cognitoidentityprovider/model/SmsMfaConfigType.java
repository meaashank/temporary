package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class SmsMfaConfigType implements Serializable {
    private String a;
    private SmsConfigurationType b;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public SmsMfaConfigType b(String str) {
        this.a = str;
        return this;
    }

    public SmsConfigurationType b() {
        return this.b;
    }

    public void a(SmsConfigurationType smsConfigurationType) {
        this.b = smsConfigurationType;
    }

    public SmsMfaConfigType b(SmsConfigurationType smsConfigurationType) {
        this.b = smsConfigurationType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("SmsAuthenticationMessage: " + a() + ",");
        }
        if (b() != null) {
            sb.append("SmsConfiguration: " + b());
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
        if (obj == null || !(obj instanceof SmsMfaConfigType)) {
            return false;
        }
        SmsMfaConfigType smsMfaConfigType = (SmsMfaConfigType) obj;
        if ((smsMfaConfigType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (smsMfaConfigType.a() != null && !smsMfaConfigType.a().equals(a())) {
            return false;
        }
        if ((smsMfaConfigType.b() == null) ^ (b() == null)) {
            return false;
        }
        return smsMfaConfigType.b() == null || smsMfaConfigType.b().equals(b());
    }
}
