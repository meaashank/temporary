package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class IdentityPoolShortDescription implements Serializable {
    private String a;
    private String b;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public IdentityPoolShortDescription b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public IdentityPoolShortDescription d(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("IdentityPoolId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("IdentityPoolName: " + b());
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
        if (obj == null || !(obj instanceof IdentityPoolShortDescription)) {
            return false;
        }
        IdentityPoolShortDescription identityPoolShortDescription = (IdentityPoolShortDescription) obj;
        if ((identityPoolShortDescription.a() == null) ^ (a() == null)) {
            return false;
        }
        if (identityPoolShortDescription.a() != null && !identityPoolShortDescription.a().equals(a())) {
            return false;
        }
        if ((identityPoolShortDescription.b() == null) ^ (b() == null)) {
            return false;
        }
        return identityPoolShortDescription.b() == null || identityPoolShortDescription.b().equals(b());
    }
}
