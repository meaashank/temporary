package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class GetUserResult implements Serializable {
    private String a;
    private List<AttributeType> b;
    private List<MFAOptionType> c;
    private String d;
    private List<String> e;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public GetUserResult b(String str) {
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

    public GetUserResult a(AttributeType... attributeTypeArr) {
        if (b() == null) {
            this.b = new ArrayList(attributeTypeArr.length);
        }
        for (AttributeType attributeType : attributeTypeArr) {
            this.b.add(attributeType);
        }
        return this;
    }

    public GetUserResult b(Collection<AttributeType> collection) {
        a(collection);
        return this;
    }

    public List<MFAOptionType> c() {
        return this.c;
    }

    public void c(Collection<MFAOptionType> collection) {
        if (collection == null) {
            this.c = null;
        } else {
            this.c = new ArrayList(collection);
        }
    }

    public GetUserResult a(MFAOptionType... mFAOptionTypeArr) {
        if (c() == null) {
            this.c = new ArrayList(mFAOptionTypeArr.length);
        }
        for (MFAOptionType mFAOptionType : mFAOptionTypeArr) {
            this.c.add(mFAOptionType);
        }
        return this;
    }

    public GetUserResult d(Collection<MFAOptionType> collection) {
        c(collection);
        return this;
    }

    public String d() {
        return this.d;
    }

    public void c(String str) {
        this.d = str;
    }

    public GetUserResult d(String str) {
        this.d = str;
        return this;
    }

    public List<String> e() {
        return this.e;
    }

    public void e(Collection<String> collection) {
        if (collection == null) {
            this.e = null;
        } else {
            this.e = new ArrayList(collection);
        }
    }

    public GetUserResult a(String... strArr) {
        if (e() == null) {
            this.e = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.e.add(str);
        }
        return this;
    }

    public GetUserResult f(Collection<String> collection) {
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
            sb.append("MFAOptions: " + c() + ",");
        }
        if (d() != null) {
            sb.append("PreferredMfaSetting: " + d() + ",");
        }
        if (e() != null) {
            sb.append("UserMFASettingList: " + e());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() == null ? 0 : d().hashCode())) * 31) + (e() != null ? e().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof GetUserResult)) {
            return false;
        }
        GetUserResult getUserResult = (GetUserResult) obj;
        if ((getUserResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (getUserResult.a() != null && !getUserResult.a().equals(a())) {
            return false;
        }
        if ((getUserResult.b() == null) ^ (b() == null)) {
            return false;
        }
        if (getUserResult.b() != null && !getUserResult.b().equals(b())) {
            return false;
        }
        if ((getUserResult.c() == null) ^ (c() == null)) {
            return false;
        }
        if (getUserResult.c() != null && !getUserResult.c().equals(c())) {
            return false;
        }
        if ((getUserResult.d() == null) ^ (d() == null)) {
            return false;
        }
        if (getUserResult.d() != null && !getUserResult.d().equals(d())) {
            return false;
        }
        if ((getUserResult.e() == null) ^ (e() == null)) {
            return false;
        }
        return getUserResult.e() == null || getUserResult.e().equals(e());
    }
}
