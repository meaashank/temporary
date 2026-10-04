package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class DescribeIdentityRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public DescribeIdentityRequest b(String str) {
        this.a = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("IdentityId: " + h());
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
        if (obj == null || !(obj instanceof DescribeIdentityRequest)) {
            return false;
        }
        DescribeIdentityRequest describeIdentityRequest = (DescribeIdentityRequest) obj;
        if ((describeIdentityRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        return describeIdentityRequest.h() == null || describeIdentityRequest.h().equals(h());
    }
}
