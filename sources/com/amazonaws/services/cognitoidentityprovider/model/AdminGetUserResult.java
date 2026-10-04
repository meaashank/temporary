package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdminGetUserResult implements Serializable {
    private String a;
    private List<AttributeType> b;
    private Date c;
    private Date d;
    private Boolean e;
    private String f;
    private List<MFAOptionType> g;
    private String h;
    private List<String> i;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AdminGetUserResult b(String str) {
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

    public AdminGetUserResult a(AttributeType... attributeTypeArr) {
        if (b() == null) {
            this.b = new ArrayList(attributeTypeArr.length);
        }
        for (AttributeType attributeType : attributeTypeArr) {
            this.b.add(attributeType);
        }
        return this;
    }

    public AdminGetUserResult b(Collection<AttributeType> collection) {
        a(collection);
        return this;
    }

    public Date c() {
        return this.c;
    }

    public void a(Date date) {
        this.c = date;
    }

    public AdminGetUserResult b(Date date) {
        this.c = date;
        return this;
    }

    public Date d() {
        return this.d;
    }

    public void c(Date date) {
        this.d = date;
    }

    public AdminGetUserResult d(Date date) {
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

    public AdminGetUserResult b(Boolean bool) {
        this.e = bool;
        return this;
    }

    public String g() {
        return this.f;
    }

    public void c(String str) {
        this.f = str;
    }

    public AdminGetUserResult d(String str) {
        this.f = str;
        return this;
    }

    public void a(UserStatusType userStatusType) {
        this.f = userStatusType.toString();
    }

    public AdminGetUserResult b(UserStatusType userStatusType) {
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

    public AdminGetUserResult a(MFAOptionType... mFAOptionTypeArr) {
        if (h() == null) {
            this.g = new ArrayList(mFAOptionTypeArr.length);
        }
        for (MFAOptionType mFAOptionType : mFAOptionTypeArr) {
            this.g.add(mFAOptionType);
        }
        return this;
    }

    public AdminGetUserResult d(Collection<MFAOptionType> collection) {
        c(collection);
        return this;
    }

    public String i() {
        return this.h;
    }

    public void e(String str) {
        this.h = str;
    }

    public AdminGetUserResult f(String str) {
        this.h = str;
        return this;
    }

    public List<String> j() {
        return this.i;
    }

    public void e(Collection<String> collection) {
        if (collection == null) {
            this.i = null;
        } else {
            this.i = new ArrayList(collection);
        }
    }

    public AdminGetUserResult a(String... strArr) {
        if (j() == null) {
            this.i = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.i.add(str);
        }
        return this;
    }

    public AdminGetUserResult f(Collection<String> collection) {
        e(collection);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("Username: " + a() + ",");
        }
        if (b() != null) {
            sb.append("UserAttributes: " + b() + ",");
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
            sb.append("MFAOptions: " + h() + ",");
        }
        if (i() != null) {
            sb.append("PreferredMfaSetting: " + i() + ",");
        }
        if (j() != null) {
            sb.append("UserMFASettingList: " + j());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() == null ? 0 : d().hashCode())) * 31) + (f() == null ? 0 : f().hashCode())) * 31) + (g() == null ? 0 : g().hashCode())) * 31) + (h() == null ? 0 : h().hashCode())) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() != null ? j().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AdminGetUserResult)) {
            return false;
        }
        AdminGetUserResult adminGetUserResult = (AdminGetUserResult) obj;
        if ((adminGetUserResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (adminGetUserResult.a() != null && !adminGetUserResult.a().equals(a())) {
            return false;
        }
        if ((adminGetUserResult.b() == null) ^ (b() == null)) {
            return false;
        }
        if (adminGetUserResult.b() != null && !adminGetUserResult.b().equals(b())) {
            return false;
        }
        if ((adminGetUserResult.c() == null) ^ (c() == null)) {
            return false;
        }
        if (adminGetUserResult.c() != null && !adminGetUserResult.c().equals(c())) {
            return false;
        }
        if ((adminGetUserResult.d() == null) ^ (d() == null)) {
            return false;
        }
        if (adminGetUserResult.d() != null && !adminGetUserResult.d().equals(d())) {
            return false;
        }
        if ((adminGetUserResult.f() == null) ^ (f() == null)) {
            return false;
        }
        if (adminGetUserResult.f() != null && !adminGetUserResult.f().equals(f())) {
            return false;
        }
        if ((adminGetUserResult.g() == null) ^ (g() == null)) {
            return false;
        }
        if (adminGetUserResult.g() != null && !adminGetUserResult.g().equals(g())) {
            return false;
        }
        if ((adminGetUserResult.h() == null) ^ (h() == null)) {
            return false;
        }
        if (adminGetUserResult.h() != null && !adminGetUserResult.h().equals(h())) {
            return false;
        }
        if ((adminGetUserResult.i() == null) ^ (i() == null)) {
            return false;
        }
        if (adminGetUserResult.i() != null && !adminGetUserResult.i().equals(i())) {
            return false;
        }
        if ((adminGetUserResult.j() == null) ^ (j() == null)) {
            return false;
        }
        return adminGetUserResult.j() == null || adminGetUserResult.j().equals(j());
    }
}
