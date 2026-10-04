package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class UnprocessedIdentityId implements Serializable {
    private String a;
    private String b;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UnprocessedIdentityId b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public UnprocessedIdentityId d(String str) {
        this.b = str;
        return this;
    }

    public void a(ErrorCode errorCode) {
        this.b = errorCode.toString();
    }

    public UnprocessedIdentityId b(ErrorCode errorCode) {
        this.b = errorCode.toString();
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("IdentityId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("ErrorCode: " + b());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() != null ? b().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UnprocessedIdentityId)) {
            return false;
        }
        UnprocessedIdentityId unprocessedIdentityId = (UnprocessedIdentityId) obj;
        if ((unprocessedIdentityId.a() == null) ^ (a() == null)) {
            return false;
        }
        if (unprocessedIdentityId.a() != null && !unprocessedIdentityId.a().equals(a())) {
            return false;
        }
        if ((unprocessedIdentityId.b() == null) ^ (b() == null)) {
            return false;
        }
        return unprocessedIdentityId.b() == null || unprocessedIdentityId.b().equals(b());
    }
}
