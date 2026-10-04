package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AdminCreateUserConfigType implements Serializable {
    private Boolean a;
    private Integer b;
    private MessageTemplateType c;

    public Boolean a() {
        return this.a;
    }

    public Boolean b() {
        return this.a;
    }

    public void a(Boolean bool) {
        this.a = bool;
    }

    public AdminCreateUserConfigType b(Boolean bool) {
        this.a = bool;
        return this;
    }

    public Integer c() {
        return this.b;
    }

    public void a(Integer num) {
        this.b = num;
    }

    public AdminCreateUserConfigType b(Integer num) {
        this.b = num;
        return this;
    }

    public MessageTemplateType d() {
        return this.c;
    }

    public void a(MessageTemplateType messageTemplateType) {
        this.c = messageTemplateType;
    }

    public AdminCreateUserConfigType b(MessageTemplateType messageTemplateType) {
        this.c = messageTemplateType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (b() != null) {
            sb.append("AllowAdminCreateUserOnly: " + b() + ",");
        }
        if (c() != null) {
            sb.append("UnusedAccountValidityDays: " + c() + ",");
        }
        if (d() != null) {
            sb.append("InviteMessageTemplate: " + d());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((b() == null ? 0 : b().hashCode()) + 31) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() != null ? d().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AdminCreateUserConfigType)) {
            return false;
        }
        AdminCreateUserConfigType adminCreateUserConfigType = (AdminCreateUserConfigType) obj;
        if ((adminCreateUserConfigType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (adminCreateUserConfigType.b() != null && !adminCreateUserConfigType.b().equals(b())) {
            return false;
        }
        if ((adminCreateUserConfigType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (adminCreateUserConfigType.c() != null && !adminCreateUserConfigType.c().equals(c())) {
            return false;
        }
        if ((adminCreateUserConfigType.d() == null) ^ (d() == null)) {
            return false;
        }
        return adminCreateUserConfigType.d() == null || adminCreateUserConfigType.d().equals(d());
    }
}
