package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class CreateIdentityProviderResult implements Serializable {
    private IdentityProviderType a;

    public IdentityProviderType a() {
        return this.a;
    }

    public void a(IdentityProviderType identityProviderType) {
        this.a = identityProviderType;
    }

    public CreateIdentityProviderResult b(IdentityProviderType identityProviderType) {
        this.a = identityProviderType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("IdentityProvider: " + a());
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
        if (obj == null || !(obj instanceof CreateIdentityProviderResult)) {
            return false;
        }
        CreateIdentityProviderResult createIdentityProviderResult = (CreateIdentityProviderResult) obj;
        if ((createIdentityProviderResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return createIdentityProviderResult.a() == null || createIdentityProviderResult.a().equals(a());
    }
}
