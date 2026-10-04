package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class UserPoolPolicyType implements Serializable {
    private PasswordPolicyType a;

    public PasswordPolicyType a() {
        return this.a;
    }

    public void a(PasswordPolicyType passwordPolicyType) {
        this.a = passwordPolicyType;
    }

    public UserPoolPolicyType b(PasswordPolicyType passwordPolicyType) {
        this.a = passwordPolicyType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("PasswordPolicy: " + a());
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
        if (obj == null || !(obj instanceof UserPoolPolicyType)) {
            return false;
        }
        UserPoolPolicyType userPoolPolicyType = (UserPoolPolicyType) obj;
        if ((userPoolPolicyType.a() == null) ^ (a() == null)) {
            return false;
        }
        return userPoolPolicyType.a() == null || userPoolPolicyType.a().equals(a());
    }
}
