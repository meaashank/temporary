package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ListIdentityProvidersRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private Integer b;
    private String c;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public ListIdentityProvidersRequest b(String str) {
        this.a = str;
        return this;
    }

    public Integer i() {
        return this.b;
    }

    public void a(Integer num) {
        this.b = num;
    }

    public ListIdentityProvidersRequest b(Integer num) {
        this.b = num;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void c(String str) {
        this.c = str;
    }

    public ListIdentityProvidersRequest d(String str) {
        this.c = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("MaxResults: " + i() + ",");
        }
        if (j() != null) {
            sb.append("NextToken: " + j());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() != null ? j().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ListIdentityProvidersRequest)) {
            return false;
        }
        ListIdentityProvidersRequest listIdentityProvidersRequest = (ListIdentityProvidersRequest) obj;
        if ((listIdentityProvidersRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (listIdentityProvidersRequest.h() != null && !listIdentityProvidersRequest.h().equals(h())) {
            return false;
        }
        if ((listIdentityProvidersRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (listIdentityProvidersRequest.i() != null && !listIdentityProvidersRequest.i().equals(i())) {
            return false;
        }
        if ((listIdentityProvidersRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        return listIdentityProvidersRequest.j() == null || listIdentityProvidersRequest.j().equals(j());
    }
}
