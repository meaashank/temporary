package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class GroupType implements Serializable {
    private String a;
    private String b;
    private String c;
    private String d;
    private Integer e;
    private Date f;
    private Date g;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public GroupType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public GroupType d(String str) {
        this.b = str;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public GroupType f(String str) {
        this.c = str;
        return this;
    }

    public String d() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public GroupType h(String str) {
        this.d = str;
        return this;
    }

    public Integer e() {
        return this.e;
    }

    public void a(Integer num) {
        this.e = num;
    }

    public GroupType b(Integer num) {
        this.e = num;
        return this;
    }

    public Date f() {
        return this.f;
    }

    public void a(Date date) {
        this.f = date;
    }

    public GroupType b(Date date) {
        this.f = date;
        return this;
    }

    public Date g() {
        return this.g;
    }

    public void c(Date date) {
        this.g = date;
    }

    public GroupType d(Date date) {
        this.g = date;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("GroupName: " + a() + ",");
        }
        if (b() != null) {
            sb.append("UserPoolId: " + b() + ",");
        }
        if (c() != null) {
            sb.append("Description: " + c() + ",");
        }
        if (d() != null) {
            sb.append("RoleArn: " + d() + ",");
        }
        if (e() != null) {
            sb.append("Precedence: " + e() + ",");
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
        if (obj == null || !(obj instanceof GroupType)) {
            return false;
        }
        GroupType groupType = (GroupType) obj;
        if ((groupType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (groupType.a() != null && !groupType.a().equals(a())) {
            return false;
        }
        if ((groupType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (groupType.b() != null && !groupType.b().equals(b())) {
            return false;
        }
        if ((groupType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (groupType.c() != null && !groupType.c().equals(c())) {
            return false;
        }
        if ((groupType.d() == null) ^ (d() == null)) {
            return false;
        }
        if (groupType.d() != null && !groupType.d().equals(d())) {
            return false;
        }
        if ((groupType.e() == null) ^ (e() == null)) {
            return false;
        }
        if (groupType.e() != null && !groupType.e().equals(e())) {
            return false;
        }
        if ((groupType.f() == null) ^ (f() == null)) {
            return false;
        }
        if (groupType.f() != null && !groupType.f().equals(f())) {
            return false;
        }
        if ((groupType.g() == null) ^ (g() == null)) {
            return false;
        }
        return groupType.g() == null || groupType.g().equals(g());
    }
}
