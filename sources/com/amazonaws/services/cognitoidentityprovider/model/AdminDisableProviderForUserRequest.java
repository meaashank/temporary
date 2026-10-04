package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AdminDisableProviderForUserRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private ProviderUserIdentifierType b;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AdminDisableProviderForUserRequest b(String str) {
        this.a = str;
        return this;
    }

    public ProviderUserIdentifierType i() {
        return this.b;
    }

    public void a(ProviderUserIdentifierType providerUserIdentifierType) {
        this.b = providerUserIdentifierType;
    }

    public AdminDisableProviderForUserRequest b(ProviderUserIdentifierType providerUserIdentifierType) {
        this.b = providerUserIdentifierType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("User: " + i());
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
        if (obj == null || !(obj instanceof AdminDisableProviderForUserRequest)) {
            return false;
        }
        AdminDisableProviderForUserRequest adminDisableProviderForUserRequest = (AdminDisableProviderForUserRequest) obj;
        if ((adminDisableProviderForUserRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (adminDisableProviderForUserRequest.h() != null && !adminDisableProviderForUserRequest.h().equals(h())) {
            return false;
        }
        if ((adminDisableProviderForUserRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        return adminDisableProviderForUserRequest.i() == null || adminDisableProviderForUserRequest.i().equals(i());
    }
}
