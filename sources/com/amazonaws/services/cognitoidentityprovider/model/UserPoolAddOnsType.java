package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class UserPoolAddOnsType implements Serializable {
    private String a;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UserPoolAddOnsType b(String str) {
        this.a = str;
        return this;
    }

    public void a(AdvancedSecurityModeType advancedSecurityModeType) {
        this.a = advancedSecurityModeType.toString();
    }

    public UserPoolAddOnsType b(AdvancedSecurityModeType advancedSecurityModeType) {
        this.a = advancedSecurityModeType.toString();
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("AdvancedSecurityMode: " + a());
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
        if (obj == null || !(obj instanceof UserPoolAddOnsType)) {
            return false;
        }
        UserPoolAddOnsType userPoolAddOnsType = (UserPoolAddOnsType) obj;
        if ((userPoolAddOnsType.a() == null) ^ (a() == null)) {
            return false;
        }
        return userPoolAddOnsType.a() == null || userPoolAddOnsType.a().equals(a());
    }
}
