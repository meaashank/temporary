package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AdminListUserAuthEventsRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private Integer c;
    private String d;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AdminListUserAuthEventsRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public AdminListUserAuthEventsRequest d(String str) {
        this.b = str;
        return this;
    }

    public Integer j() {
        return this.c;
    }

    public void a(Integer num) {
        this.c = num;
    }

    public AdminListUserAuthEventsRequest b(Integer num) {
        this.c = num;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void e(String str) {
        this.d = str;
    }

    public AdminListUserAuthEventsRequest f(String str) {
        this.d = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("Username: " + i() + ",");
        }
        if (j() != null) {
            sb.append("MaxResults: " + j() + ",");
        }
        if (k() != null) {
            sb.append("NextToken: " + k());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() != null ? k().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AdminListUserAuthEventsRequest)) {
            return false;
        }
        AdminListUserAuthEventsRequest adminListUserAuthEventsRequest = (AdminListUserAuthEventsRequest) obj;
        if ((adminListUserAuthEventsRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (adminListUserAuthEventsRequest.h() != null && !adminListUserAuthEventsRequest.h().equals(h())) {
            return false;
        }
        if ((adminListUserAuthEventsRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (adminListUserAuthEventsRequest.i() != null && !adminListUserAuthEventsRequest.i().equals(i())) {
            return false;
        }
        if ((adminListUserAuthEventsRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (adminListUserAuthEventsRequest.j() != null && !adminListUserAuthEventsRequest.j().equals(j())) {
            return false;
        }
        if ((adminListUserAuthEventsRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        return adminListUserAuthEventsRequest.k() == null || adminListUserAuthEventsRequest.k().equals(k());
    }
}
