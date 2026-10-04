package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class DescribeUserPoolDomainRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public DescribeUserPoolDomainRequest b(String str) {
        this.a = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("Domain: " + h());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return 31 + (h() == null ? 0 : h().hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DescribeUserPoolDomainRequest)) {
            return false;
        }
        DescribeUserPoolDomainRequest describeUserPoolDomainRequest = (DescribeUserPoolDomainRequest) obj;
        if ((describeUserPoolDomainRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        return describeUserPoolDomainRequest.h() == null || describeUserPoolDomainRequest.h().equals(h());
    }
}
