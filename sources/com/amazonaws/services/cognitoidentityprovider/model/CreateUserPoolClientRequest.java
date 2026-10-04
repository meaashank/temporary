package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class CreateUserPoolClientRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private Boolean c;
    private Integer d;
    private List<String> e;
    private List<String> f;
    private List<String> g;
    private List<String> h;
    private List<String> i;
    private List<String> j;
    private String k;
    private List<String> l;
    private List<String> m;
    private Boolean n;
    private AnalyticsConfigurationType o;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public CreateUserPoolClientRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public CreateUserPoolClientRequest d(String str) {
        this.b = str;
        return this;
    }

    public Boolean j() {
        return this.c;
    }

    public Boolean k() {
        return this.c;
    }

    public void a(Boolean bool) {
        this.c = bool;
    }

    public CreateUserPoolClientRequest b(Boolean bool) {
        this.c = bool;
        return this;
    }

    public Integer l() {
        return this.d;
    }

    public void a(Integer num) {
        this.d = num;
    }

    public CreateUserPoolClientRequest b(Integer num) {
        this.d = num;
        return this;
    }

    public List<String> m() {
        return this.e;
    }

    public void a(Collection<String> collection) {
        if (collection == null) {
            this.e = null;
        } else {
            this.e = new ArrayList(collection);
        }
    }

    public CreateUserPoolClientRequest a(String... strArr) {
        if (m() == null) {
            this.e = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.e.add(str);
        }
        return this;
    }

    public CreateUserPoolClientRequest b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public List<String> n() {
        return this.f;
    }

    public void c(Collection<String> collection) {
        if (collection == null) {
            this.f = null;
        } else {
            this.f = new ArrayList(collection);
        }
    }

    public CreateUserPoolClientRequest b(String... strArr) {
        if (n() == null) {
            this.f = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.f.add(str);
        }
        return this;
    }

    public CreateUserPoolClientRequest d(Collection<String> collection) {
        c(collection);
        return this;
    }

    public List<String> o() {
        return this.g;
    }

    public void e(Collection<String> collection) {
        if (collection == null) {
            this.g = null;
        } else {
            this.g = new ArrayList(collection);
        }
    }

    public CreateUserPoolClientRequest c(String... strArr) {
        if (o() == null) {
            this.g = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.g.add(str);
        }
        return this;
    }

    public CreateUserPoolClientRequest f(Collection<String> collection) {
        e(collection);
        return this;
    }

    public List<String> p() {
        return this.h;
    }

    public void g(Collection<String> collection) {
        if (collection == null) {
            this.h = null;
        } else {
            this.h = new ArrayList(collection);
        }
    }

    public CreateUserPoolClientRequest d(String... strArr) {
        if (p() == null) {
            this.h = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.h.add(str);
        }
        return this;
    }

    public CreateUserPoolClientRequest h(Collection<String> collection) {
        g(collection);
        return this;
    }

    public List<String> q() {
        return this.i;
    }

    public void i(Collection<String> collection) {
        if (collection == null) {
            this.i = null;
        } else {
            this.i = new ArrayList(collection);
        }
    }

    public CreateUserPoolClientRequest e(String... strArr) {
        if (q() == null) {
            this.i = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.i.add(str);
        }
        return this;
    }

    public CreateUserPoolClientRequest j(Collection<String> collection) {
        i(collection);
        return this;
    }

    public List<String> r() {
        return this.j;
    }

    public void k(Collection<String> collection) {
        if (collection == null) {
            this.j = null;
        } else {
            this.j = new ArrayList(collection);
        }
    }

    public CreateUserPoolClientRequest f(String... strArr) {
        if (r() == null) {
            this.j = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.j.add(str);
        }
        return this;
    }

    public CreateUserPoolClientRequest l(Collection<String> collection) {
        k(collection);
        return this;
    }

    public String s() {
        return this.k;
    }

    public void e(String str) {
        this.k = str;
    }

    public CreateUserPoolClientRequest f(String str) {
        this.k = str;
        return this;
    }

    public List<String> t() {
        return this.l;
    }

    public void m(Collection<String> collection) {
        if (collection == null) {
            this.l = null;
        } else {
            this.l = new ArrayList(collection);
        }
    }

    public CreateUserPoolClientRequest g(String... strArr) {
        if (t() == null) {
            this.l = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.l.add(str);
        }
        return this;
    }

    public CreateUserPoolClientRequest n(Collection<String> collection) {
        m(collection);
        return this;
    }

    public List<String> u() {
        return this.m;
    }

    public void o(Collection<String> collection) {
        if (collection == null) {
            this.m = null;
        } else {
            this.m = new ArrayList(collection);
        }
    }

    public CreateUserPoolClientRequest h(String... strArr) {
        if (u() == null) {
            this.m = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.m.add(str);
        }
        return this;
    }

    public CreateUserPoolClientRequest p(Collection<String> collection) {
        o(collection);
        return this;
    }

    public Boolean v() {
        return this.n;
    }

    public Boolean w() {
        return this.n;
    }

    public void c(Boolean bool) {
        this.n = bool;
    }

    public CreateUserPoolClientRequest d(Boolean bool) {
        this.n = bool;
        return this;
    }

    public AnalyticsConfigurationType x() {
        return this.o;
    }

    public void a(AnalyticsConfigurationType analyticsConfigurationType) {
        this.o = analyticsConfigurationType;
    }

    public CreateUserPoolClientRequest b(AnalyticsConfigurationType analyticsConfigurationType) {
        this.o = analyticsConfigurationType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("ClientName: " + i() + ",");
        }
        if (k() != null) {
            sb.append("GenerateSecret: " + k() + ",");
        }
        if (l() != null) {
            sb.append("RefreshTokenValidity: " + l() + ",");
        }
        if (m() != null) {
            sb.append("ReadAttributes: " + m() + ",");
        }
        if (n() != null) {
            sb.append("WriteAttributes: " + n() + ",");
        }
        if (o() != null) {
            sb.append("ExplicitAuthFlows: " + o() + ",");
        }
        if (p() != null) {
            sb.append("SupportedIdentityProviders: " + p() + ",");
        }
        if (q() != null) {
            sb.append("CallbackURLs: " + q() + ",");
        }
        if (r() != null) {
            sb.append("LogoutURLs: " + r() + ",");
        }
        if (s() != null) {
            sb.append("DefaultRedirectURI: " + s() + ",");
        }
        if (t() != null) {
            sb.append("AllowedOAuthFlows: " + t() + ",");
        }
        if (u() != null) {
            sb.append("AllowedOAuthScopes: " + u() + ",");
        }
        if (w() != null) {
            sb.append("AllowedOAuthFlowsUserPoolClient: " + w() + ",");
        }
        if (x() != null) {
            sb.append("AnalyticsConfiguration: " + x());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (l() == null ? 0 : l().hashCode())) * 31) + (m() == null ? 0 : m().hashCode())) * 31) + (n() == null ? 0 : n().hashCode())) * 31) + (o() == null ? 0 : o().hashCode())) * 31) + (p() == null ? 0 : p().hashCode())) * 31) + (q() == null ? 0 : q().hashCode())) * 31) + (r() == null ? 0 : r().hashCode())) * 31) + (s() == null ? 0 : s().hashCode())) * 31) + (t() == null ? 0 : t().hashCode())) * 31) + (u() == null ? 0 : u().hashCode())) * 31) + (w() == null ? 0 : w().hashCode())) * 31) + (x() != null ? x().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateUserPoolClientRequest)) {
            return false;
        }
        CreateUserPoolClientRequest createUserPoolClientRequest = (CreateUserPoolClientRequest) obj;
        if ((createUserPoolClientRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (createUserPoolClientRequest.h() != null && !createUserPoolClientRequest.h().equals(h())) {
            return false;
        }
        if ((createUserPoolClientRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (createUserPoolClientRequest.i() != null && !createUserPoolClientRequest.i().equals(i())) {
            return false;
        }
        if ((createUserPoolClientRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (createUserPoolClientRequest.k() != null && !createUserPoolClientRequest.k().equals(k())) {
            return false;
        }
        if ((createUserPoolClientRequest.l() == null) ^ (l() == null)) {
            return false;
        }
        if (createUserPoolClientRequest.l() != null && !createUserPoolClientRequest.l().equals(l())) {
            return false;
        }
        if ((createUserPoolClientRequest.m() == null) ^ (m() == null)) {
            return false;
        }
        if (createUserPoolClientRequest.m() != null && !createUserPoolClientRequest.m().equals(m())) {
            return false;
        }
        if ((createUserPoolClientRequest.n() == null) ^ (n() == null)) {
            return false;
        }
        if (createUserPoolClientRequest.n() != null && !createUserPoolClientRequest.n().equals(n())) {
            return false;
        }
        if ((createUserPoolClientRequest.o() == null) ^ (o() == null)) {
            return false;
        }
        if (createUserPoolClientRequest.o() != null && !createUserPoolClientRequest.o().equals(o())) {
            return false;
        }
        if ((createUserPoolClientRequest.p() == null) ^ (p() == null)) {
            return false;
        }
        if (createUserPoolClientRequest.p() != null && !createUserPoolClientRequest.p().equals(p())) {
            return false;
        }
        if ((createUserPoolClientRequest.q() == null) ^ (q() == null)) {
            return false;
        }
        if (createUserPoolClientRequest.q() != null && !createUserPoolClientRequest.q().equals(q())) {
            return false;
        }
        if ((createUserPoolClientRequest.r() == null) ^ (r() == null)) {
            return false;
        }
        if (createUserPoolClientRequest.r() != null && !createUserPoolClientRequest.r().equals(r())) {
            return false;
        }
        if ((createUserPoolClientRequest.s() == null) ^ (s() == null)) {
            return false;
        }
        if (createUserPoolClientRequest.s() != null && !createUserPoolClientRequest.s().equals(s())) {
            return false;
        }
        if ((createUserPoolClientRequest.t() == null) ^ (t() == null)) {
            return false;
        }
        if (createUserPoolClientRequest.t() != null && !createUserPoolClientRequest.t().equals(t())) {
            return false;
        }
        if ((createUserPoolClientRequest.u() == null) ^ (u() == null)) {
            return false;
        }
        if (createUserPoolClientRequest.u() != null && !createUserPoolClientRequest.u().equals(u())) {
            return false;
        }
        if ((createUserPoolClientRequest.w() == null) ^ (w() == null)) {
            return false;
        }
        if (createUserPoolClientRequest.w() != null && !createUserPoolClientRequest.w().equals(w())) {
            return false;
        }
        if ((createUserPoolClientRequest.x() == null) ^ (x() == null)) {
            return false;
        }
        return createUserPoolClientRequest.x() == null || createUserPoolClientRequest.x().equals(x());
    }
}
