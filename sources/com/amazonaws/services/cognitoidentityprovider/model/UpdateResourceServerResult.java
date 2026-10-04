package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class UpdateResourceServerResult implements Serializable {
    private ResourceServerType a;

    public ResourceServerType a() {
        return this.a;
    }

    public void a(ResourceServerType resourceServerType) {
        this.a = resourceServerType;
    }

    public UpdateResourceServerResult b(ResourceServerType resourceServerType) {
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
        if (obj == null || !(obj instanceof UpdateResourceServerResult)) {
            return false;
        }
        UpdateResourceServerResult updateResourceServerResult = (UpdateResourceServerResult) obj;
        if ((updateResourceServerResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return updateResourceServerResult.a() == null || updateResourceServerResult.a().equals(a());
    }
}
