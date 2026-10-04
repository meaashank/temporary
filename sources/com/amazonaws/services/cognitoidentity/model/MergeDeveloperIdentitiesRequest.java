package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class MergeDeveloperIdentitiesRequest extends AmazonWebServiceRequest implements Serializable {
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

    public MergeDeveloperIdentitiesRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public MergeDeveloperIdentitiesRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public MergeDeveloperIdentitiesRequest f(String str) {
        this.c = str;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public MergeDeveloperIdentitiesRequest h(String str) {
        this.d = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("SourceUserIdentifier: " + h() + ",");
        }
        if (i() != null) {
            sb.append("DestinationUserIdentifier: " + i() + ",");
        }
        if (j() != null) {
            sb.append("DeveloperProviderName: " + j() + ",");
        }
        if (k() != null) {
            sb.append("IdentityPoolId: " + k());
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
        if (obj == null || !(obj instanceof MergeDeveloperIdentitiesRequest)) {
            return false;
        }
        MergeDeveloperIdentitiesRequest mergeDeveloperIdentitiesRequest = (MergeDeveloperIdentitiesRequest) obj;
        if ((mergeDeveloperIdentitiesRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (mergeDeveloperIdentitiesRequest.h() != null && !mergeDeveloperIdentitiesRequest.h().equals(h())) {
            return false;
        }
        if ((mergeDeveloperIdentitiesRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (mergeDeveloperIdentitiesRequest.i() != null && !mergeDeveloperIdentitiesRequest.i().equals(i())) {
            return false;
        }
        if ((mergeDeveloperIdentitiesRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (mergeDeveloperIdentitiesRequest.j() != null && !mergeDeveloperIdentitiesRequest.j().equals(j())) {
            return false;
        }
        if ((mergeDeveloperIdentitiesRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        return mergeDeveloperIdentitiesRequest.k() == null || mergeDeveloperIdentitiesRequest.k().equals(k());
    }
}
