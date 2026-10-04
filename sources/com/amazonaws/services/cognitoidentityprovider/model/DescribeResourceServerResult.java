package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class DescribeResourceServerResult implements Serializable {
    private ResourceServerType a;

    public ResourceServerType a() {
        return this.a;
    }

    public void a(ResourceServerType resourceServerType) {
        this.a = resourceServerType;
    }

    public DescribeResourceServerResult b(ResourceServerType resourceServerType) {
        this.a = resourceServerType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("ResourceServer: " + a());
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
        if (obj == null || !(obj instanceof DescribeResourceServerResult)) {
            return false;
        }
        DescribeResourceServerResult describeResourceServerResult = (DescribeResourceServerResult) obj;
        if ((describeResourceServerResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return describeResourceServerResult.a() == null || describeResourceServerResult.a().equals(a());
    }
}
