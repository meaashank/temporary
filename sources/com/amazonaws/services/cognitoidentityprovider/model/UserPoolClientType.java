package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class UserPoolClientType implements Serializable {
    private String a;
    private String b;
    private String c;
    private String d;
    private Date e;
    private Date f;
    private Integer g;
    private List<String> h;
    private List<String> i;
    private List<String> j;
    private List<String> k;
    private List<String> l;
    private List<String> m;
    private String n;
    private List<String> o;
    private List<String> p;
    private Boolean q;
    private AnalyticsConfigurationType r;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UserPoolClientType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public UserPoolClientType d(String str) {
        this.b = str;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public UserPoolClientType f(String str) {
        this.c = str;
        return this;
    }

    public String d() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public UserPoolClientType h(String str) {
        this.d = str;
        return this;
    }

    public Date e() {
        return this.e;
    }

    public void a(Date date) {
        this.e = date;
    }

    public UserPoolClientType b(Date date) {
        this.e = date;
        return this;
    }

    public Date f() {
        return this.f;
    }

    public void c(Date date) {
        this.f = date;
    }

    public UserPoolClientType d(Date date) {
        this.f = date;
        return this;
    }

    public Integer g() {
        return this.g;
    }

    public void a(Integer num) {
        this.g = num;
    }

    public UserPoolClientType b(Integer num) {
        this.g = num;
        return this;
    }

    public List<String> h() {
        return this.h;
    }

    public void a(Collection<String> collection) {
        if (collection == null) {
            this.h = null;
        } else {
            this.h = new ArrayList(collection);
        }
    }

    public UserPoolClientType a(String... strArr) {
        if (h() == null) {
            this.h = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.h.add(str);
        }
        return this;
    }

    public UserPoolClientType b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public List<String> i() {
        return this.i;
    }

    public void c(Collection<String> collection) {
        if (collection == null) {
            this.i = null;
        } else {
            this.i = new ArrayList(collection);
        }
    }

    public UserPoolClientType b(String... strArr) {
        if (i() == null) {
            this.i = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.i.add(str);
        }
        return this;
    }

    public UserPoolClientType d(Collection<String> collection) {
        c(collection);
        return this;
    }

    public List<String> j() {
        return this.j;
    }

    public void e(Collection<String> collection) {
        if (collection == null) {
            this.j = null;
        } else {
            this.j = new ArrayList(collection);
        }
    }

    public UserPoolClientType c(String... strArr) {
        if (j() == null) {
            this.j = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.j.add(str);
        }
        return this;
    }

    public UserPoolClientType f(Collection<String> collection) {
        e(collection);
        return this;
    }

    public List<String> k() {
        return this.k;
    }

    public void g(Collection<String> collection) {
        if (collection == null) {
            this.k = null;
        } else {
            this.k = new ArrayList(collection);
        }
    }

    public UserPoolClientType d(String... strArr) {
        if (k() == null) {
            this.k = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.k.add(str);
        }
        return this;
    }

    public UserPoolClientType h(Collection<String> collection) {
        g(collection);
        return this;
    }

    public List<String> l() {
        return this.l;
    }

    public void i(Collection<String> collection) {
        if (collection == null) {
            this.l = null;
        } else {
            this.l = new ArrayList(collection);
        }
    }

    public UserPoolClientType e(String... strArr) {
        if (l() == null) {
            this.l = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.l.add(str);
        }
        return this;
    }

    public UserPoolClientType j(Collection<String> collection) {
        i(collection);
        return this;
    }

    public List<String> m() {
        return this.m;
    }

    public void k(Collection<String> collection) {
        if (collection == null) {
            this.m = null;
        } else {
            this.m = new ArrayList(collection);
        }
    }

    public UserPoolClientType f(String... strArr) {
        if (m() == null) {
            this.m = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.m.add(str);
        }
        return this;
    }

    public UserPoolClientType l(Collection<String> collection) {
        k(collection);
        return this;
    }

    public String n() {
        return this.n;
    }

    public void i(String str) {
        this.n = str;
    }

    public UserPoolClientType j(String str) {
        this.n = str;
        return this;
    }

    public List<String> o() {
        return this.o;
    }

    public void m(Collection<String> collection) {
        if (collection == null) {
            this.o = null;
        } else {
            this.o = new ArrayList(collection);
        }
    }

    public UserPoolClientType g(String... strArr) {
        if (o() == null) {
            this.o = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.o.add(str);
        }
        return this;
    }

    public UserPoolClientType n(Collection<String> collection) {
        m(collection);
        return this;
    }

    public List<String> p() {
        return this.p;
    }

    public void o(Collection<String> collection) {
        if (collection == null) {
            this.p = null;
        } else {
            this.p = new ArrayList(collection);
        }
    }

    public UserPoolClientType h(String... strArr) {
        if (p() == null) {
            this.p = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.p.add(str);
        }
        return this;
    }

    public UserPoolClientType p(Collection<String> collection) {
        o(collection);
        return this;
    }

    public Boolean q() {
        return this.q;
    }

    public Boolean r() {
        return this.q;
    }

    public void a(Boolean bool) {
        this.q = bool;
    }

    public UserPoolClientType b(Boolean bool) {
        this.q = bool;
        return this;
    }

    public AnalyticsConfigurationType s() {
        return this.r;
    }

    public void a(AnalyticsConfigurationType analyticsConfigurationType) {
        this.r = analyticsConfigurationType;
    }

    public UserPoolClientType b(AnalyticsConfigurationType analyticsConfigurationType) {
        this.r = analyticsConfigurationType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("UserPoolId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("ClientName: " + b() + ",");
        }
        if (c() != null) {
            sb.append("ClientId: " + c() + ",");
        }
        if (d() != null) {
            sb.append("ClientSecret: " + d() + ",");
        }
        if (e() != null) {
            sb.append("LastModifiedDate: " + e() + ",");
        }
        if (f() != null) {
            sb.append("CreationDate: " + f() + ",");
        }
        if (g() != null) {
            sb.append("RefreshTokenValidity: " + g() + ",");
        }
        if (h() != null) {
            sb.append("ReadAttributes: " + h() + ",");
        }
        if (i() != null) {
            sb.append("WriteAttributes: " + i() + ",");
        }
        if (j() != null) {
            sb.append("ExplicitAuthFlows: " + j() + ",");
        }
        if (k() != null) {
            sb.append("SupportedIdentityProviders: " + k() + ",");
        }
        if (l() != null) {
            sb.append("CallbackURLs: " + l() + ",");
        }
        if (m() != null) {
            sb.append("LogoutURLs: " + m() + ",");
        }
        if (n() != null) {
            sb.append("DefaultRedirectURI: " + n() + ",");
        }
        if (o() != null) {
            sb.append("AllowedOAuthFlows: " + o() + ",");
        }
        if (p() != null) {
            sb.append("AllowedOAuthScopes: " + p() + ",");
        }
        if (r() != null) {
            sb.append("AllowedOAuthFlowsUserPoolClient: " + r() + ",");
        }
        if (s() != null) {
            sb.append("AnalyticsConfiguration: " + s());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() == null ? 0 : d().hashCode())) * 31) + (e() == null ? 0 : e().hashCode())) * 31) + (f() == null ? 0 : f().hashCode())) * 31) + (g() == null ? 0 : g().hashCode())) * 31) + (h() == null ? 0 : h().hashCode())) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (l() == null ? 0 : l().hashCode())) * 31) + (m() == null ? 0 : m().hashCode())) * 31) + (n() == null ? 0 : n().hashCode())) * 31) + (o() == null ? 0 : o().hashCode())) * 31) + (p() == null ? 0 : p().hashCode())) * 31) + (r() == null ? 0 : r().hashCode())) * 31) + (s() != null ? s().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UserPoolClientType)) {
            return false;
        }
        UserPoolClientType userPoolClientType = (UserPoolClientType) obj;
        if ((userPoolClientType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (userPoolClientType.a() != null && !userPoolClientType.a().equals(a())) {
            return false;
        }
        if ((userPoolClientType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (userPoolClientType.b() != null && !userPoolClientType.b().equals(b())) {
            return false;
        }
        if ((userPoolClientType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (userPoolClientType.c() != null && !userPoolClientType.c().equals(c())) {
            return false;
        }
        if ((userPoolClientType.d() == null) ^ (d() == null)) {
            return false;
        }
        if (userPoolClientType.d() != null && !userPoolClientType.d().equals(d())) {
            return false;
        }
        if ((userPoolClientType.e() == null) ^ (e() == null)) {
            return false;
        }
        if (userPoolClientType.e() != null && !userPoolClientType.e().equals(e())) {
            return false;
        }
        if ((userPoolClientType.f() == null) ^ (f() == null)) {
            return false;
        }
        if (userPoolClientType.f() != null && !userPoolClientType.f().equals(f())) {
            return false;
        }
        if ((userPoolClientType.g() == null) ^ (g() == null)) {
            return false;
        }
        if (userPoolClientType.g() != null && !userPoolClientType.g().equals(g())) {
            return false;
        }
        if ((userPoolClientType.h() == null) ^ (h() == null)) {
            return false;
        }
        if (userPoolClientType.h() != null && !userPoolClientType.h().equals(h())) {
            return false;
        }
        if ((userPoolClientType.i() == null) ^ (i() == null)) {
            return false;
        }
        if (userPoolClientType.i() != null && !userPoolClientType.i().equals(i())) {
            return false;
        }
        if ((userPoolClientType.j() == null) ^ (j() == null)) {
            return false;
        }
        if (userPoolClientType.j() != null && !userPoolClientType.j().equals(j())) {
            return false;
        }
        if ((userPoolClientType.k() == null) ^ (k() == null)) {
            return false;
        }
        if (userPoolClientType.k() != null && !userPoolClientType.k().equals(k())) {
            return false;
        }
        if ((userPoolClientType.l() == null) ^ (l() == null)) {
            return false;
        }
        if (userPoolClientType.l() != null && !userPoolClientType.l().equals(l())) {
            return false;
        }
        if ((userPoolClientType.m() == null) ^ (m() == null)) {
            return false;
        }
        if (userPoolClientType.m() != null && !userPoolClientType.m().equals(m())) {
            return false;
        }
        if ((userPoolClientType.n() == null) ^ (n() == null)) {
            return false;
        }
        if (userPoolClientType.n() != null && !userPoolClientType.n().equals(n())) {
            return false;
        }
        if ((userPoolClientType.o() == null) ^ (o() == null)) {
            return false;
        }
        if (userPoolClientType.o() != null && !userPoolClientType.o().equals(o())) {
            return false;
        }
        if ((userPoolClientType.p() == null) ^ (p() == null)) {
            return false;
        }
        if (userPoolClientType.p() != null && !userPoolClientType.p().equals(p())) {
            return false;
        }
        if ((userPoolClientType.r() == null) ^ (r() == null)) {
            return false;
        }
        if (userPoolClientType.r() != null && !userPoolClientType.r().equals(r())) {
            return false;
        }
        if ((userPoolClientType.s() == null) ^ (s() == null)) {
            return false;
        }
        return userPoolClientType.s() == null || userPoolClientType.s().equals(s());
    }
}
