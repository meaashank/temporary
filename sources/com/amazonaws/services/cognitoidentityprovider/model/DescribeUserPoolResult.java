package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class DescribeUserPoolResult implements Serializable {
    private UserPoolType a;

    public UserPoolType a() {
        return this.a;
    }

    public void a(UserPoolType userPoolType) {
        this.a = userPoolType;
    }

    public DescribeUserPoolResult b(UserPoolType userPoolType) {
        this.a = userPoolType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("UserPool: " + a());
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
        if (obj == null || !(obj instanceof DescribeUserPoolResult)) {
            return false;
        }
        DescribeUserPoolResult describeUserPoolResult = (DescribeUserPoolResult) obj;
        if ((describeUserPoolResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return describeUserPoolResult.a() == null || describeUserPoolResult.a().equals(a());
    }
}
