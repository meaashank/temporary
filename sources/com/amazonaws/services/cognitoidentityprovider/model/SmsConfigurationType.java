package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class SmsConfigurationType implements Serializable {
    private String a;
    private String b;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public SmsConfigurationType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public SmsConfigurationType d(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("SnsCallerArn: " + a() + ",");
        }
        if (b() != null) {
            sb.append("ExternalId: " + b());
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
        if (obj == null || !(obj instanceof SmsConfigurationType)) {
            return false;
        }
        SmsConfigurationType smsConfigurationType = (SmsConfigurationType) obj;
        if ((smsConfigurationType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (smsConfigurationType.a() != null && !smsConfigurationType.a().equals(a())) {
            return false;
        }
        if ((smsConfigurationType.b() == null) ^ (b() == null)) {
            return false;
        }
        return smsConfigurationType.b() == null || smsConfigurationType.b().equals(b());
    }
}
