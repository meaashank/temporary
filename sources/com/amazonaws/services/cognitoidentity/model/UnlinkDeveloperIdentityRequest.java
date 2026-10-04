package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class UnlinkDeveloperIdentityRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;
    private String d;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UnlinkDeveloperIdentityRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public UnlinkDeveloperIdentityRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public UnlinkDeveloperIdentityRequest f(String str) {
        this.c = str;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public UnlinkDeveloperIdentityRequest h(String str) {
        this.d = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("IdentityId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("IdentityPoolId: " + i() + ",");
        }
        if (j() != null) {
            sb.append("DeveloperProviderName: " + j() + ",");
        }
        if (k() != null) {
            sb.append("DeveloperUserIdentifier: " + k());
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
        if (obj == null || !(obj instanceof UnlinkDeveloperIdentityRequest)) {
            return false;
        }
        UnlinkDeveloperIdentityRequest unlinkDeveloperIdentityRequest = (UnlinkDeveloperIdentityRequest) obj;
        if ((unlinkDeveloperIdentityRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (unlinkDeveloperIdentityRequest.h() != null && !unlinkDeveloperIdentityRequest.h().equals(h())) {
            return false;
        }
        if ((unlinkDeveloperIdentityRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (unlinkDeveloperIdentityRequest.i() != null && !unlinkDeveloperIdentityRequest.i().equals(i())) {
            return false;
        }
        if ((unlinkDeveloperIdentityRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (unlinkDeveloperIdentityRequest.j() != null && !unlinkDeveloperIdentityRequest.j().equals(j())) {
            return false;
        }
        if ((unlinkDeveloperIdentityRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        return unlinkDeveloperIdentityRequest.k() == null || unlinkDeveloperIdentityRequest.k().equals(k());
    }
}
