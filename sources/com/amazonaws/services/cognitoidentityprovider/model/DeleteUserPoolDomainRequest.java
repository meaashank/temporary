package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class DeleteUserPoolDomainRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public DeleteUserPoolDomainRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public DeleteUserPoolDomainRequest d(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("Domain: " + h() + ",");
        }
        if (i() != null) {
            sb.append("UserPoolId: " + i());
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
        if (obj == null || !(obj instanceof DeleteUserPoolDomainRequest)) {
            return false;
        }
        DeleteUserPoolDomainRequest deleteUserPoolDomainRequest = (DeleteUserPoolDomainRequest) obj;
        if ((deleteUserPoolDomainRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (deleteUserPoolDomainRequest.h() != null && !deleteUserPoolDomainRequest.h().equals(h())) {
            return false;
        }
        if ((deleteUserPoolDomainRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        return deleteUserPoolDomainRequest.i() == null || deleteUserPoolDomainRequest.i().equals(i());
    }
}
