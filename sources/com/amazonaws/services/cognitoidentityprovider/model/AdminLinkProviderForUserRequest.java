package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AdminLinkProviderForUserRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private ProviderUserIdentifierType b;
    private ProviderUserIdentifierType c;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AdminLinkProviderForUserRequest b(String str) {
        this.a = str;
        return this;
    }

    public ProviderUserIdentifierType i() {
        return this.b;
    }

    public void a(ProviderUserIdentifierType providerUserIdentifierType) {
        this.b = providerUserIdentifierType;
    }

    public AdminLinkProviderForUserRequest b(ProviderUserIdentifierType providerUserIdentifierType) {
        this.b = providerUserIdentifierType;
        return this;
    }

    public ProviderUserIdentifierType j() {
        return this.c;
    }

    public void c(ProviderUserIdentifierType providerUserIdentifierType) {
        this.c = providerUserIdentifierType;
    }

    public AdminLinkProviderForUserRequest d(ProviderUserIdentifierType providerUserIdentifierType) {
        this.c = providerUserIdentifierType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("DestinationUser: " + i() + ",");
        }
        if (j() != null) {
            sb.append("SourceUser: " + j());
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
        if (obj == null || !(obj instanceof AdminLinkProviderForUserRequest)) {
            return false;
        }
        AdminLinkProviderForUserRequest adminLinkProviderForUserRequest = (AdminLinkProviderForUserRequest) obj;
        if ((adminLinkProviderForUserRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (adminLinkProviderForUserRequest.h() != null && !adminLinkProviderForUserRequest.h().equals(h())) {
            return false;
        }
        if ((adminLinkProviderForUserRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (adminLinkProviderForUserRequest.i() != null && !adminLinkProviderForUserRequest.i().equals(i())) {
            return false;
        }
        if ((adminLinkProviderForUserRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        return adminLinkProviderForUserRequest.j() == null || adminLinkProviderForUserRequest.j().equals(j());
    }
}
