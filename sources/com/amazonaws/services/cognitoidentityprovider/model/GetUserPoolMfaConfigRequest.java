package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class GetUserPoolMfaConfigRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public GetUserPoolMfaConfigRequest b(String str) {
        this.a = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return 31 + (h() == null ? 0 : h().hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetUserPoolMfaConfigRequest)) {
            return false;
        }
        GetUserPoolMfaConfigRequest getUserPoolMfaConfigRequest = (GetUserPoolMfaConfigRequest) obj;
        if ((getUserPoolMfaConfigRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        return getUserPoolMfaConfigRequest.h() == null || getUserPoolMfaConfigRequest.h().equals(h());
    }
}
