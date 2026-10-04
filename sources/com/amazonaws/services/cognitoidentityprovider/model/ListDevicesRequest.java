package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class ListDevicesRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private Integer b;
    private String c;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public ListDevicesRequest b(String str) {
        this.a = str;
        return this;
    }

    public Integer i() {
        return this.b;
    }

    public void a(Integer num) {
        this.b = num;
    }

    public ListDevicesRequest b(Integer num) {
        this.b = num;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void c(String str) {
        this.c = str;
    }

    public ListDevicesRequest d(String str) {
        this.c = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("AccessToken: " + h() + ",");
        }
        if (i() != null) {
            sb.append("Limit: " + i() + ",");
        }
        if (j() != null) {
            sb.append("PaginationToken: " + j());
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
        if (obj == null || !(obj instanceof ListDevicesRequest)) {
            return false;
        }
        ListDevicesRequest listDevicesRequest = (ListDevicesRequest) obj;
        if ((listDevicesRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (listDevicesRequest.h() != null && !listDevicesRequest.h().equals(h())) {
            return false;
        }
        if ((listDevicesRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (listDevicesRequest.i() != null && !listDevicesRequest.i().equals(i())) {
            return false;
        }
        if ((listDevicesRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        return listDevicesRequest.j() == null || listDevicesRequest.j().equals(j());
    }
}
