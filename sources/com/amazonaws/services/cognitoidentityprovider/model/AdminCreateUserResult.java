package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AdminCreateUserResult implements Serializable {
    private UserType a;

    public UserType a() {
        return this.a;
    }

    public void a(UserType userType) {
        this.a = userType;
    }

    public AdminCreateUserResult b(UserType userType) {
        this.a = userType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("User: " + a());
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
        if (obj == null || !(obj instanceof AdminCreateUserResult)) {
            return false;
        }
        AdminCreateUserResult adminCreateUserResult = (AdminCreateUserResult) obj;
        if ((adminCreateUserResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return adminCreateUserResult.a() == null || adminCreateUserResult.a().equals(a());
    }
}
