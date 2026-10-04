package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class UICustomizationType implements Serializable {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;
    private Date f;
    private Date g;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UICustomizationType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public UICustomizationType d(String str) {
        this.b = str;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public UICustomizationType f(String str) {
        this.c = str;
        return this;
    }

    public String d() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public UICustomizationType h(String str) {
        this.d = str;
        return this;
    }

    public String e() {
        return this.e;
    }

    public void i(String str) {
        this.e = str;
    }

    public UICustomizationType j(String str) {
        this.e = str;
        return this;
    }

    public Date f() {
        return this.f;
    }

    public void a(Date date) {
        this.f = date;
    }

    public UICustomizationType b(Date date) {
        this.f = date;
        return this;
    }

    public Date g() {
        return this.g;
    }

    public void c(Date date) {
        this.g = date;
    }

    public UICustomizationType d(Date date) {
        this.g = date;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("UserPoolId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("ClientId: " + b() + ",");
        }
        if (c() != null) {
            sb.append("ImageUrl: " + c() + ",");
        }
        if (d() != null) {
            sb.append("CSS: " + d() + ",");
        }
        if (e() != null) {
            sb.append("CSSVersion: " + e() + ",");
        }
        if (f() != null) {
            sb.append("LastModifiedDate: " + f() + ",");
        }
        if (g() != null) {
            sb.append("CreationDate: " + g());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() == null ? 0 : d().hashCode())) * 31) + (e() == null ? 0 : e().hashCode())) * 31) + (f() == null ? 0 : f().hashCode())) * 31) + (g() != null ? g().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UICustomizationType)) {
            return false;
        }
        UICustomizationType uICustomizationType = (UICustomizationType) obj;
        if ((uICustomizationType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (uICustomizationType.a() != null && !uICustomizationType.a().equals(a())) {
            return false;
        }
        if ((uICustomizationType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (uICustomizationType.b() != null && !uICustomizationType.b().equals(b())) {
            return false;
        }
        if ((uICustomizationType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (uICustomizationType.c() != null && !uICustomizationType.c().equals(c())) {
            return false;
        }
        if ((uICustomizationType.d() == null) ^ (d() == null)) {
            return false;
        }
        if (uICustomizationType.d() != null && !uICustomizationType.d().equals(d())) {
            return false;
        }
        if ((uICustomizationType.e() == null) ^ (e() == null)) {
            return false;
        }
        if (uICustomizationType.e() != null && !uICustomizationType.e().equals(e())) {
            return false;
        }
        if ((uICustomizationType.f() == null) ^ (f() == null)) {
            return false;
        }
        if (uICustomizationType.f() != null && !uICustomizationType.f().equals(f())) {
            return false;
        }
        if ((uICustomizationType.g() == null) ^ (g() == null)) {
            return false;
        }
        return uICustomizationType.g() == null || uICustomizationType.g().equals(g());
    }
}
