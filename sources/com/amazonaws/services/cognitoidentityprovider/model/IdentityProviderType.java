package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class IdentityProviderType implements Serializable {
    private String a;
    private String b;
    private String c;
    private Map<String, String> d;
    private Map<String, String> e;
    private List<String> f;
    private Date g;
    private Date h;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public IdentityProviderType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public IdentityProviderType d(String str) {
        this.b = str;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public IdentityProviderType f(String str) {
        this.c = str;
        return this;
    }

    public void a(IdentityProviderTypeType identityProviderTypeType) {
        this.c = identityProviderTypeType.toString();
    }

    public IdentityProviderType b(IdentityProviderTypeType identityProviderTypeType) {
        this.c = identityProviderTypeType.toString();
        return this;
    }

    public Map<String, String> d() {
        return this.d;
    }

    public void a(Map<String, String> map) {
        this.d = map;
    }

    public IdentityProviderType b(Map<String, String> map) {
        this.d = map;
        return this;
    }

    public IdentityProviderType a(String str, String str2) {
        if (this.d == null) {
            this.d = new HashMap();
        }
        if (this.d.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.d.put(str, str2);
        return this;
    }

    public IdentityProviderType e() {
        this.d = null;
        return this;
    }

    public Map<String, String> f() {
        return this.e;
    }

    public void c(Map<String, String> map) {
        this.e = map;
    }

    public IdentityProviderType d(Map<String, String> map) {
        this.e = map;
        return this;
    }

    public IdentityProviderType b(String str, String str2) {
        if (this.e == null) {
            this.e = new HashMap();
        }
        if (this.e.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.e.put(str, str2);
        return this;
    }

    public IdentityProviderType g() {
        this.e = null;
        return this;
    }

    public List<String> h() {
        return this.f;
    }

    public void a(Collection<String> collection) {
        if (collection == null) {
            this.f = null;
        } else {
            this.f = new ArrayList(collection);
        }
    }

    public IdentityProviderType a(String... strArr) {
        if (h() == null) {
            this.f = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.f.add(str);
        }
        return this;
    }

    public IdentityProviderType b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public Date i() {
        return this.g;
    }

    public void a(Date date) {
        this.g = date;
    }

    public IdentityProviderType b(Date date) {
        this.g = date;
        return this;
    }

    public Date j() {
        return this.h;
    }

    public void c(Date date) {
        this.h = date;
    }

    public IdentityProviderType d(Date date) {
        this.h = date;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("UserPoolId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("ProviderName: " + b() + ",");
        }
        if (c() != null) {
            sb.append("ProviderType: " + c() + ",");
        }
        if (d() != null) {
            sb.append("ProviderDetails: " + d() + ",");
        }
        if (f() != null) {
            sb.append("AttributeMapping: " + f() + ",");
        }
        if (h() != null) {
            sb.append("IdpIdentifiers: " + h() + ",");
        }
        if (i() != null) {
            sb.append("LastModifiedDate: " + i() + ",");
        }
        if (j() != null) {
            sb.append("CreationDate: " + j());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() == null ? 0 : d().hashCode())) * 31) + (f() == null ? 0 : f().hashCode())) * 31) + (h() == null ? 0 : h().hashCode())) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() != null ? j().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof IdentityProviderType)) {
            return false;
        }
        IdentityProviderType identityProviderType = (IdentityProviderType) obj;
        if ((identityProviderType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (identityProviderType.a() != null && !identityProviderType.a().equals(a())) {
            return false;
        }
        if ((identityProviderType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (identityProviderType.b() != null && !identityProviderType.b().equals(b())) {
            return false;
        }
        if ((identityProviderType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (identityProviderType.c() != null && !identityProviderType.c().equals(c())) {
            return false;
        }
        if ((identityProviderType.d() == null) ^ (d() == null)) {
            return false;
        }
        if (identityProviderType.d() != null && !identityProviderType.d().equals(d())) {
            return false;
        }
        if ((identityProviderType.f() == null) ^ (f() == null)) {
            return false;
        }
        if (identityProviderType.f() != null && !identityProviderType.f().equals(f())) {
            return false;
        }
        if ((identityProviderType.h() == null) ^ (h() == null)) {
            return false;
        }
        if (identityProviderType.h() != null && !identityProviderType.h().equals(h())) {
            return false;
        }
        if ((identityProviderType.i() == null) ^ (i() == null)) {
            return false;
        }
        if (identityProviderType.i() != null && !identityProviderType.i().equals(i())) {
            return false;
        }
        if ((identityProviderType.j() == null) ^ (j() == null)) {
            return false;
        }
        return identityProviderType.j() == null || identityProviderType.j().equals(j());
    }
}
