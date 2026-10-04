package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ListIdentitiesRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private Integer b;
    private String c;
    private Boolean d;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public ListIdentitiesRequest b(String str) {
        this.a = str;
        return this;
    }

    public Integer i() {
        return this.b;
    }

    public void a(Integer num) {
        this.b = num;
    }

    public ListIdentitiesRequest b(Integer num) {
        this.b = num;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void c(String str) {
        this.c = str;
    }

    public ListIdentitiesRequest d(String str) {
        this.c = str;
        return this;
    }

    public Boolean k() {
        return this.d;
    }

    public Boolean l() {
        return this.d;
    }

    public void a(Boolean bool) {
        this.d = bool;
    }

    public ListIdentitiesRequest b(Boolean bool) {
        this.d = bool;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("IdentityPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("MaxResults: " + i() + ",");
        }
        if (j() != null) {
            sb.append("NextToken: " + j() + ",");
        }
        if (l() != null) {
            sb.append("HideDisabled: " + l());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (l() != null ? l().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ListIdentitiesRequest)) {
            return false;
        }
        ListIdentitiesRequest listIdentitiesRequest = (ListIdentitiesRequest) obj;
        if ((listIdentitiesRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (listIdentitiesRequest.h() != null && !listIdentitiesRequest.h().equals(h())) {
            return false;
        }
        if ((listIdentitiesRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (listIdentitiesRequest.i() != null && !listIdentitiesRequest.i().equals(i())) {
            return false;
        }
        if ((listIdentitiesRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (listIdentitiesRequest.j() != null && !listIdentitiesRequest.j().equals(j())) {
            return false;
        }
        if ((listIdentitiesRequest.l() == null) ^ (l() == null)) {
            return false;
        }
        return listIdentitiesRequest.l() == null || listIdentitiesRequest.l().equals(l());
    }
}
