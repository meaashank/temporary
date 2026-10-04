package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class UpdateUserPoolDomainResult implements Serializable {
    private String a;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UpdateUserPoolDomainResult b(String str) {
        this.a = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("CloudFrontDomain: " + a());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return 31 + (a() == null ? 0 : a().hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UpdateUserPoolDomainResult)) {
            return false;
        }
        UpdateUserPoolDomainResult updateUserPoolDomainResult = (UpdateUserPoolDomainResult) obj;
        if ((updateUserPoolDomainResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return updateUserPoolDomainResult.a() == null || updateUserPoolDomainResult.a().equals(a());
    }
}
