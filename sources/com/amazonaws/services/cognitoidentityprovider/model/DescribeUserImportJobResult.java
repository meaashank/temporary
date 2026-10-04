package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class DescribeUserImportJobResult implements Serializable {
    private UserImportJobType a;

    public UserImportJobType a() {
        return this.a;
    }

    public void a(UserImportJobType userImportJobType) {
        this.a = userImportJobType;
    }

    public DescribeUserImportJobResult b(UserImportJobType userImportJobType) {
        this.a = userImportJobType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("UserImportJob: " + a());
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
        if (obj == null || !(obj instanceof DescribeUserImportJobResult)) {
            return false;
        }
        DescribeUserImportJobResult describeUserImportJobResult = (DescribeUserImportJobResult) obj;
        if ((describeUserImportJobResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return describeUserImportJobResult.a() == null || describeUserImportJobResult.a().equals(a());
    }
}
