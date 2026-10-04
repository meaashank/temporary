package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class LookupDeveloperIdentityRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;
    private Integer d;
    private String e;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public LookupDeveloperIdentityRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public LookupDeveloperIdentityRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public LookupDeveloperIdentityRequest f(String str) {
        this.c = str;
        return this;
    }

    public Integer k() {
        return this.d;
    }

    public void a(Integer num) {
        this.d = num;
    }

    public LookupDeveloperIdentityRequest b(Integer num) {
        this.d = num;
        return this;
    }

    public String l() {
        return this.e;
    }

    public void g(String str) {
        this.e = str;
    }

    public LookupDeveloperIdentityRequest h(String str) {
        this.e = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("IdentityPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("IdentityId: " + i() + ",");
        }
        if (j() != null) {
            sb.append("DeveloperUserIdentifier: " + j() + ",");
        }
        if (k() != null) {
            sb.append("MaxResults: " + k() + ",");
        }
        if (l() != null) {
            sb.append("NextToken: " + l());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (l() != null ? l().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof LookupDeveloperIdentityRequest)) {
            return false;
        }
        LookupDeveloperIdentityRequest lookupDeveloperIdentityRequest = (LookupDeveloperIdentityRequest) obj;
        if ((lookupDeveloperIdentityRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (lookupDeveloperIdentityRequest.h() != null && !lookupDeveloperIdentityRequest.h().equals(h())) {
            return false;
        }
        if ((lookupDeveloperIdentityRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (lookupDeveloperIdentityRequest.i() != null && !lookupDeveloperIdentityRequest.i().equals(i())) {
            return false;
        }
        if ((lookupDeveloperIdentityRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (lookupDeveloperIdentityRequest.j() != null && !lookupDeveloperIdentityRequest.j().equals(j())) {
            return false;
        }
        if ((lookupDeveloperIdentityRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (lookupDeveloperIdentityRequest.k() != null && !lookupDeveloperIdentityRequest.k().equals(k())) {
            return false;
        }
        if ((lookupDeveloperIdentityRequest.l() == null) ^ (l() == null)) {
            return false;
        }
        return lookupDeveloperIdentityRequest.l() == null || lookupDeveloperIdentityRequest.l().equals(l());
    }
}
