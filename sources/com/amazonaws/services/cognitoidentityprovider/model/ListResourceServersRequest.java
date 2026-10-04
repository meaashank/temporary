package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ListResourceServersRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private Integer b;
    private String c;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public ListResourceServersRequest b(String str) {
        this.a = str;
        return this;
    }

    public Integer i() {
        return this.b;
    }

    public void a(Integer num) {
        this.b = num;
    }

    public ListResourceServersRequest b(Integer num) {
        this.b = num;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void c(String str) {
        this.c = str;
    }

    public ListResourceServersRequest d(String str) {
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
        if (obj == null || !(obj instanceof ListResourceServersRequest)) {
            return false;
        }
        ListResourceServersRequest listResourceServersRequest = (ListResourceServersRequest) obj;
        if ((listResourceServersRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (listResourceServersRequest.h() != null && !listResourceServersRequest.h().equals(h())) {
            return false;
        }
        if ((listResourceServersRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (listResourceServersRequest.i() != null && !listResourceServersRequest.i().equals(i())) {
            return false;
        }
        if ((listResourceServersRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        return listResourceServersRequest.j() == null || listResourceServersRequest.j().equals(j());
    }
}
