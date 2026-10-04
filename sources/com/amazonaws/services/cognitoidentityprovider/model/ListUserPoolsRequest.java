package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ListUserPoolsRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private Integer b;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public ListUserPoolsRequest b(String str) {
        this.a = str;
        return this;
    }

    public Integer i() {
        return this.b;
    }

    public void a(Integer num) {
        this.b = num;
    }

    public ListUserPoolsRequest b(Integer num) {
        this.b = num;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("NextToken: " + h() + ",");
        }
        if (i() != null) {
            sb.append("MaxResults: " + i());
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
        if (obj == null || !(obj instanceof ListUserPoolsRequest)) {
            return false;
        }
        ListUserPoolsRequest listUserPoolsRequest = (ListUserPoolsRequest) obj;
        if ((listUserPoolsRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (listUserPoolsRequest.h() != null && !listUserPoolsRequest.h().equals(h())) {
            return false;
        }
        if ((listUserPoolsRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        return listUserPoolsRequest.i() == null || listUserPoolsRequest.i().equals(i());
    }
}
