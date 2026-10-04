package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class DescribeUserImportJobRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public DescribeUserImportJobRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public DescribeUserImportJobRequest d(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("JobId: " + i());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() != null ? i().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DescribeUserImportJobRequest)) {
            return false;
        }
        DescribeUserImportJobRequest describeUserImportJobRequest = (DescribeUserImportJobRequest) obj;
        if ((describeUserImportJobRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (describeUserImportJobRequest.h() != null && !describeUserImportJobRequest.h().equals(h())) {
            return false;
        }
        if ((describeUserImportJobRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        return describeUserImportJobRequest.i() == null || describeUserImportJobRequest.i().equals(i());
    }
}
