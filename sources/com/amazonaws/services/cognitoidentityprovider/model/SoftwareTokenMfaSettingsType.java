package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class SoftwareTokenMfaSettingsType implements Serializable {
    private Boolean a;
    private Boolean b;

    public Boolean a() {
        return this.a;
    }

    public Boolean b() {
        return this.a;
    }

    public void a(Boolean bool) {
        this.a = bool;
    }

    public SoftwareTokenMfaSettingsType b(Boolean bool) {
        this.a = bool;
        return this;
    }

    public Boolean c() {
        return this.b;
    }

    public Boolean d() {
        return this.b;
    }

    public void c(Boolean bool) {
        this.b = bool;
    }

    public SoftwareTokenMfaSettingsType d(Boolean bool) {
        this.b = bool;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (b() != null) {
            sb.append("Enabled: " + b() + ",");
        }
        if (d() != null) {
            sb.append("PreferredMfa: " + d());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((b() == null ? 0 : b().hashCode()) + 31) * 31) + (d() != null ? d().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SoftwareTokenMfaSettingsType)) {
            return false;
        }
        SoftwareTokenMfaSettingsType softwareTokenMfaSettingsType = (SoftwareTokenMfaSettingsType) obj;
        if ((softwareTokenMfaSettingsType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (softwareTokenMfaSettingsType.b() != null && !softwareTokenMfaSettingsType.b().equals(b())) {
            return false;
        }
        if ((softwareTokenMfaSettingsType.d() == null) ^ (d() == null)) {
            return false;
        }
        return softwareTokenMfaSettingsType.d() == null || softwareTokenMfaSettingsType.d().equals(d());
    }
}
