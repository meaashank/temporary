package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class DescribeUserPoolDomainResult implements Serializable {
    private DomainDescriptionType a;

    public DomainDescriptionType a() {
        return this.a;
    }

    public void a(DomainDescriptionType domainDescriptionType) {
        this.a = domainDescriptionType;
    }

    public DescribeUserPoolDomainResult b(DomainDescriptionType domainDescriptionType) {
        this.a = domainDescriptionType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("DomainDescription: " + a());
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
        if (obj == null || !(obj instanceof DescribeUserPoolDomainResult)) {
            return false;
        }
        DescribeUserPoolDomainResult describeUserPoolDomainResult = (DescribeUserPoolDomainResult) obj;
        if ((describeUserPoolDomainResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return describeUserPoolDomainResult.a() == null || describeUserPoolDomainResult.a().equals(a());
    }
}
