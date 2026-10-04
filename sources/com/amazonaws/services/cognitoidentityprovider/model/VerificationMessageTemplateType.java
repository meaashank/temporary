package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class VerificationMessageTemplateType implements Serializable {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private String f;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public VerificationMessageTemplateType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public VerificationMessageTemplateType d(String str) {
        this.b = str;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public VerificationMessageTemplateType f(String str) {
        this.c = str;
        return this;
    }

    public String d() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public VerificationMessageTemplateType h(String str) {
        this.d = str;
        return this;
    }

    public String e() {
        return this.e;
    }

    public void i(String str) {
        this.e = str;
    }

    public VerificationMessageTemplateType j(String str) {
        this.e = str;
        return this;
    }

    public String f() {
        return this.f;
    }

    public void k(String str) {
        this.f = str;
    }

    public VerificationMessageTemplateType l(String str) {
        this.f = str;
        return this;
    }

    public void a(DefaultEmailOptionType defaultEmailOptionType) {
        this.f = defaultEmailOptionType.toString();
    }

    public VerificationMessageTemplateType b(DefaultEmailOptionType defaultEmailOptionType) {
        this.f = defaultEmailOptionType.toString();
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("SmsMessage: " + a() + ",");
        }
        if (b() != null) {
            sb.append("EmailMessage: " + b() + ",");
        }
        if (c() != null) {
            sb.append("EmailSubject: " + c() + ",");
        }
        if (d() != null) {
            sb.append("EmailMessageByLink: " + d() + ",");
        }
        if (e() != null) {
            sb.append("EmailSubjectByLink: " + e() + ",");
        }
        if (f() != null) {
            sb.append("DefaultEmailOption: " + f());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() == null ? 0 : d().hashCode())) * 31) + (e() == null ? 0 : e().hashCode())) * 31) + (f() != null ? f().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof VerificationMessageTemplateType)) {
            return false;
        }
        VerificationMessageTemplateType verificationMessageTemplateType = (VerificationMessageTemplateType) obj;
        if ((verificationMessageTemplateType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (verificationMessageTemplateType.a() != null && !verificationMessageTemplateType.a().equals(a())) {
            return false;
        }
        if ((verificationMessageTemplateType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (verificationMessageTemplateType.b() != null && !verificationMessageTemplateType.b().equals(b())) {
            return false;
        }
        if ((verificationMessageTemplateType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (verificationMessageTemplateType.c() != null && !verificationMessageTemplateType.c().equals(c())) {
            return false;
        }
        if ((verificationMessageTemplateType.d() == null) ^ (d() == null)) {
            return false;
        }
        if (verificationMessageTemplateType.d() != null && !verificationMessageTemplateType.d().equals(d())) {
            return false;
        }
        if ((verificationMessageTemplateType.e() == null) ^ (e() == null)) {
            return false;
        }
        if (verificationMessageTemplateType.e() != null && !verificationMessageTemplateType.e().equals(e())) {
            return false;
        }
        if ((verificationMessageTemplateType.f() == null) ^ (f() == null)) {
            return false;
        }
        return verificationMessageTemplateType.f() == null || verificationMessageTemplateType.f().equals(f());
    }
}
