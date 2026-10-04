package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ListIdentityPoolsRequest extends AmazonWebServiceRequest implements Serializable {
    private Integer a;
    private String b;

    public Integer h() {
        return this.a;
    }

    public void a(Integer num) {
        this.a = num;
    }

    public ListIdentityPoolsRequest b(Integer num) {
        this.a = num;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public ListIdentityPoolsRequest b(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("MaxResults: " + h() + ",");
        }
        if (i() != null) {
            sb.append("NextToken: " + i());
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
        if (obj == null || !(obj instanceof ListIdentityPoolsRequest)) {
            return false;
        }
        ListIdentityPoolsRequest listIdentityPoolsRequest = (ListIdentityPoolsRequest) obj;
        if ((listIdentityPoolsRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (listIdentityPoolsRequest.h() != null && !listIdentityPoolsRequest.h().equals(h())) {
            return false;
        }
        if ((listIdentityPoolsRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        return listIdentityPoolsRequest.i() == null || listIdentityPoolsRequest.i().equals(i());
    }
}
