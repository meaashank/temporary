package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class CreateUserPoolDomainRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private CustomDomainConfigType c;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public CreateUserPoolDomainRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public CreateUserPoolDomainRequest d(String str) {
        this.b = str;
        return this;
    }

    public CustomDomainConfigType j() {
        return this.c;
    }

    public void a(CustomDomainConfigType customDomainConfigType) {
        this.c = customDomainConfigType;
    }

    public CreateUserPoolDomainRequest b(CustomDomainConfigType customDomainConfigType) {
        this.c = customDomainConfigType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("Domain: " + h() + ",");
        }
        if (i() != null) {
            sb.append("UserPoolId: " + i() + ",");
        }
        if (j() != null) {
            sb.append("CustomDomainConfig: " + j());
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
        if (obj == null || !(obj instanceof CreateUserPoolDomainRequest)) {
            return false;
        }
        CreateUserPoolDomainRequest createUserPoolDomainRequest = (CreateUserPoolDomainRequest) obj;
        if ((createUserPoolDomainRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (createUserPoolDomainRequest.h() != null && !createUserPoolDomainRequest.h().equals(h())) {
            return false;
        }
        if ((createUserPoolDomainRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (createUserPoolDomainRequest.i() != null && !createUserPoolDomainRequest.i().equals(i())) {
            return false;
        }
        if ((createUserPoolDomainRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        return createUserPoolDomainRequest.j() == null || createUserPoolDomainRequest.j().equals(j());
    }
}
