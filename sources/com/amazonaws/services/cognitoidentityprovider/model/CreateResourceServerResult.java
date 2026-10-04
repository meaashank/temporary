package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class CreateResourceServerResult implements Serializable {
    private ResourceServerType a;

    public ResourceServerType a() {
        return this.a;
    }

    public void a(ResourceServerType resourceServerType) {
        this.a = resourceServerType;
    }

    public CreateResourceServerResult b(ResourceServerType resourceServerType) {
        this.a = resourceServerType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("ResourceServer: " + a());
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
        if (obj == null || !(obj instanceof CreateResourceServerResult)) {
            return false;
        }
        CreateResourceServerResult createResourceServerResult = (CreateResourceServerResult) obj;
        if ((createResourceServerResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return createResourceServerResult.a() == null || createResourceServerResult.a().equals(a());
    }
}
