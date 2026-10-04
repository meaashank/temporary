package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class UserType implements Serializable {
    private String a;
    private List<AttributeType> b;
    private Date c;
    private Date d;
    private Boolean e;
    private String f;
    private List<MFAOptionType> g;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UserType b(String str) {
        this.a = str;
        return this;
    }

    public List<AttributeType> b() {
        return this.b;
    }

    public void a(Collection<AttributeType> collection) {
        if (collection == null) {
            this.b = null;
        } else {
            this.b = new ArrayList(collection);
        }
    }

    public UserType a(AttributeType... attributeTypeArr) {
        if (b() == null) {
            this.b = new ArrayList(attributeTypeArr.length);
        }
        for (AttributeType attributeType : attributeTypeArr) {
            this.b.add(attributeType);
        }
        return this;
    }

    public UserType b(Collection<AttributeType> collection) {
        a(collection);
        return this;
    }

    public Date c() {
        return this.c;
    }

    public void a(Date date) {
        this.c = date;
    }

    public UserType b(Date date) {
        this.c = date;
        return this;
    }

    public Date d() {
        return this.d;
    }

    public void c(Date date) {
        this.d = date;
    }

    public UserType d(Date date) {
        this.d = date;
        return this;
    }

    public Boolean e() {
        return this.e;
    }

    public Boolean f() {
        return this.e;
    }

    public void a(Boolean bool) {
        this.e = bool;
    }

    public UserType b(Boolean bool) {
        this.e = bool;
        return this;
    }

    public String g() {
        return this.f;
    }

    public void c(String str) {
        this.f = str;
    }

    public UserType d(String str) {
        this.f = str;
        return this;
    }

    public void a(UserStatusType userStatusType) {
        this.f = userStatusType.toString();
    }

    public UserType b(UserStatusType userStatusType) {
        this.f = userStatusType.toString();
        return this;
    }

    public List<MFAOptionType> h() {
        return this.g;
    }

    public void c(Collection<MFAOptionType> collection) {
        if (collection == null) {
            this.g = null;
        } else {
            this.g = new ArrayList(collection);
        }
    }

    public UserType a(MFAOptionType... mFAOptionTypeArr) {
        if (h() == null) {
            this.g = new ArrayList(mFAOptionTypeArr.length);
        }
        for (MFAOptionType mFAOptionType : mFAOptionTypeArr) {
            this.g.add(mFAOptionType);
        }
        return this;
    }

    public UserType d(Collection<MFAOptionType> collection) {
        c(collection);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("Username: " + a() + ",");
        }
        if (b() != null) {
            sb.append("Attributes: " + b() + ",");
        }
        if (c() != null) {
            sb.append("UserCreateDate: " + c() + ",");
        }
        if (d() != null) {
            sb.append("UserLastModifiedDate: " + d() + ",");
        }
        if (f() != null) {
            sb.append("Enabled: " + f() + ",");
        }
        if (g() != null) {
            sb.append("UserStatus: " + g() + ",");
        }
        if (h() != null) {
            sb.append("MFAOptions: " + h());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() == null ? 0 : d().hashCode())) * 31) + (f() == null ? 0 : f().hashCode())) * 31) + (g() == null ? 0 : g().hashCode())) * 31) + (h() != null ? h().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UserType)) {
            return false;
        }
        UserType userType = (UserType) obj;
        if ((userType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (userType.a() != null && !userType.a().equals(a())) {
            return false;
        }
        if ((userType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (userType.b() != null && !userType.b().equals(b())) {
            return false;
        }
        if ((userType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (userType.c() != null && !userType.c().equals(c())) {
            return false;
        }
        if ((userType.d() == null) ^ (d() == null)) {
            return false;
        }
        if (userType.d() != null && !userType.d().equals(d())) {
            return false;
        }
        if ((userType.f() == null) ^ (f() == null)) {
            return false;
        }
        if (userType.f() != null && !userType.f().equals(f())) {
            return false;
        }
        if ((userType.g() == null) ^ (g() == null)) {
            return false;
        }
        if (userType.g() != null && !userType.g().equals(g())) {
            return false;
        }
        if ((userType.h() == null) ^ (h() == null)) {
            return false;
        }
        return userType.h() == null || userType.h().equals(h());
    }
}
