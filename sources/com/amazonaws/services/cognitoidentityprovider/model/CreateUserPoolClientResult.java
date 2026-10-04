package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class CreateUserPoolClientResult implements Serializable {
    private UserPoolClientType a;

    public UserPoolClientType a() {
        return this.a;
    }

    public void a(UserPoolClientType userPoolClientType) {
        this.a = userPoolClientType;
    }

    public CreateUserPoolClientResult b(UserPoolClientType userPoolClientType) {
        this.a = userPoolClientType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("UserPoolClient: " + a());
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
        if (obj == null || !(obj instanceof CreateUserPoolClientResult)) {
            return false;
        }
        CreateUserPoolClientResult createUserPoolClientResult = (CreateUserPoolClientResult) obj;
        if ((createUserPoolClientResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return createUserPoolClientResult.a() == null || createUserPoolClientResult.a().equals(a());
    }
}
