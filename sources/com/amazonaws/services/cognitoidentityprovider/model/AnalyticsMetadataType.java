package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AnalyticsMetadataType implements Serializable {
    private String a;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AnalyticsMetadataType b(String str) {
        this.a = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("AnalyticsEndpointId: " + a());
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
        if (obj == null || !(obj instanceof AnalyticsMetadataType)) {
            return false;
        }
        AnalyticsMetadataType analyticsMetadataType = (AnalyticsMetadataType) obj;
        if ((analyticsMetadataType.a() == null) ^ (a() == null)) {
            return false;
        }
        return analyticsMetadataType.a() == null || analyticsMetadataType.a().equals(a());
    }
}
