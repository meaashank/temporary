package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class MessageTemplateType implements Serializable {
    private String a;
    private String b;
    private String c;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public MessageTemplateType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public MessageTemplateType d(String str) {
        this.b = str;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public MessageTemplateType f(String str) {
        this.c = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("SMSMessage: " + a() + ",");
        }
        if (b() != null) {
            sb.append("EmailMessage: " + b() + ",");
        }
        if (c() != null) {
            sb.append("EmailSubject: " + c());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() != null ? c().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof MessageTemplateType)) {
            return false;
        }
        MessageTemplateType messageTemplateType = (MessageTemplateType) obj;
        if ((messageTemplateType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (messageTemplateType.a() != null && !messageTemplateType.a().equals(a())) {
            return false;
        }
        if ((messageTemplateType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (messageTemplateType.b() != null && !messageTemplateType.b().equals(b())) {
            return false;
        }
        if ((messageTemplateType.c() == null) ^ (c() == null)) {
            return false;
        }
        return messageTemplateType.c() == null || messageTemplateType.c().equals(c());
    }
}
