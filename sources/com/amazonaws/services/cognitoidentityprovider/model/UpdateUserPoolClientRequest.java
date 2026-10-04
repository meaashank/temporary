package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class UpdateUserPoolClientRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;
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

    public UpdateUserPoolClientRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public UpdateUserPoolClientRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public UpdateUserPoolClientRequest f(String str) {
        this.c = str;
        return this;
    }

    public Integer k() {
        return this.d;
    }

    public void a(Integer num) {
        this.d = num;
    }

    public UpdateUserPoolClientRequest b(Integer num) {
        this.d = num;
        return this;
    }

    public List<String> l() {
        return this.e;
    }

    public void a(Collection<String> collection) {
        if (collection == null) {
            this.e = null;
        } else {
            this.e = new ArrayList(collection);
        }
    }

    public UpdateUserPoolClientRequest a(String... strArr) {
        if (l() == null) {
            this.e = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.e.add(str);
        }
        return this;
    }

    public UpdateUserPoolClientRequest b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public List<String> m() {
        return this.f;
    }

    public void c(Collection<String> collection) {
        if (collection == null) {
            this.f = null;
        } else {
            this.f = new ArrayList(collection);
        }
    }

    public UpdateUserPoolClientRequest b(String... strArr) {
        if (m() == null) {
            this.f = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.f.add(str);
        }
        return this;
    }

    public UpdateUserPoolClientRequest d(Collection<String> collection) {
        c(collection);
        return this;
    }

    public List<String> n() {
        return this.g;
    }

    public void e(Collection<String> collection) {
        if (collection == null) {
            this.g = null;
        } else {
            this.g = new ArrayList(collection);
        }
    }

    public UpdateUserPoolClientRequest c(String... strArr) {
        if (n() == null) {
            this.g = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.g.add(str);
        }
        return this;
    }

    public UpdateUserPoolClientRequest f(Collection<String> collection) {
        e(collection);
        return this;
    }

    public List<String> o() {
        return this.h;
    }

    public void g(Collection<String> collection) {
        if (collection == null) {
            this.h = null;
        } else {
            this.h = new ArrayList(collection);
        }
    }

    public UpdateUserPoolClientRequest d(String... strArr) {
        if (o() == null) {
            this.h = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.h.add(str);
        }
        return this;
    }

    public UpdateUserPoolClientRequest h(Collection<String> collection) {
        g(collection);
        return this;
    }

    public List<String> p() {
        return this.i;
    }

    public void i(Collection<String> collection) {
        if (collection == null) {
            this.i = null;
        } else {
            this.i = new ArrayList(collection);
        }
    }

    public UpdateUserPoolClientRequest e(String... strArr) {
        if (p() == null) {
            this.i = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.i.add(str);
        }
        return this;
    }

    public UpdateUserPoolClientRequest j(Collection<String> collection) {
        i(collection);
        return this;
    }

    public List<String> q() {
        return this.j;
    }

    public void k(Collection<String> collection) {
        if (collection == null) {
            this.j = null;
        } else {
            this.j = new ArrayList(collection);
        }
    }

    public UpdateUserPoolClientRequest f(String... strArr) {
        if (q() == null) {
            this.j = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.j.add(str);
        }
        return this;
    }

    public UpdateUserPoolClientRequest l(Collection<String> collection) {
        k(collection);
        return this;
    }

    public String r() {
        return this.k;
    }

    public void g(String str) {
        this.k = str;
    }

    public UpdateUserPoolClientRequest h(String str) {
        this.k = str;
        return this;
    }

    public List<String> s() {
        return this.l;
    }

    public void m(Collection<String> collection) {
        if (collection == null) {
            this.l = null;
        } else {
            this.l = new ArrayList(collection);
        }
    }

    public UpdateUserPoolClientRequest g(String... strArr) {
        if (s() == null) {
            this.l = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.l.add(str);
        }
        return this;
    }

    public UpdateUserPoolClientRequest n(Collection<String> collection) {
        m(collection);
        return this;
    }

    public List<String> t() {
        return this.m;
    }

    public void o(Collection<String> collection) {
        if (collection == null) {
            this.m = null;
        } else {
            this.m = new ArrayList(collection);
        }
    }

    public UpdateUserPoolClientRequest h(String... strArr) {
        if (t() == null) {
            this.m = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.m.add(str);
        }
        return this;
    }

    public UpdateUserPoolClientRequest p(Collection<String> collection) {
        o(collection);
        return this;
    }

    public Boolean u() {
        return this.n;
    }

    public Boolean v() {
        return this.n;
    }

    public void a(Boolean bool) {
        this.n = bool;
    }

    public UpdateUserPoolClientRequest b(Boolean bool) {
        this.n = bool;
        return this;
    }

    public AnalyticsConfigurationType w() {
        return this.o;
    }

    public void a(AnalyticsConfigurationType analyticsConfigurationType) {
        this.o = analyticsConfigurationType;
    }

    public UpdateUserPoolClientRequest b(AnalyticsConfigurationType analyticsConfigurationType) {
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
            sb.append("ClientId: " + i() + ",");
        }
        if (j() != null) {
            sb.append("ClientName: " + j() + ",");
        }
        if (k() != null) {
            sb.append("RefreshTokenValidity: " + k() + ",");
        }
        if (l() != null) {
            sb.append("ReadAttributes: " + l() + ",");
        }
        if (m() != null) {
            sb.append("WriteAttributes: " + m() + ",");
        }
        if (n() != null) {
            sb.append("ExplicitAuthFlows: " + n() + ",");
        }
        if (o() != null) {
            sb.append("SupportedIdentityProviders: " + o() + ",");
        }
        if (p() != null) {
            sb.append("CallbackURLs: " + p() + ",");
        }
        if (q() != null) {
            sb.append("LogoutURLs: " + q() + ",");
        }
        if (r() != null) {
            sb.append("DefaultRedirectURI: " + r() + ",");
        }
        if (s() != null) {
            sb.append("AllowedOAuthFlows: " + s() + ",");
        }
        if (t() != null) {
            sb.append("AllowedOAuthScopes: " + t() + ",");
        }
        if (v() != null) {
            sb.append("AllowedOAuthFlowsUserPoolClient: " + v() + ",");
        }
        if (w() != null) {
            sb.append("AnalyticsConfiguration: " + w());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((((((((((((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (l() == null ? 0 : l().hashCode())) * 31) + (m() == null ? 0 : m().hashCode())) * 31) + (n() == null ? 0 : n().hashCode())) * 31) + (o() == null ? 0 : o().hashCode())) * 31) + (p() == null ? 0 : p().hashCode())) * 31) + (q() == null ? 0 : q().hashCode())) * 31) + (r() == null ? 0 : r().hashCode())) * 31) + (s() == null ? 0 : s().hashCode())) * 31) + (t() == null ? 0 : t().hashCode())) * 31) + (v() == null ? 0 : v().hashCode())) * 31) + (w() != null ? w().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UpdateUserPoolClientRequest)) {
            return false;
        }
        UpdateUserPoolClientRequest updateUserPoolClientRequest = (UpdateUserPoolClientRequest) obj;
        if ((updateUserPoolClientRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (updateUserPoolClientRequest.h() != null && !updateUserPoolClientRequest.h().equals(h())) {
            return false;
        }
        if ((updateUserPoolClientRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (updateUserPoolClientRequest.i() != null && !updateUserPoolClientRequest.i().equals(i())) {
            return false;
        }
        if ((updateUserPoolClientRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (updateUserPoolClientRequest.j() != null && !updateUserPoolClientRequest.j().equals(j())) {
            return false;
        }
        if ((updateUserPoolClientRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (updateUserPoolClientRequest.k() != null && !updateUserPoolClientRequest.k().equals(k())) {
            return false;
        }
        if ((updateUserPoolClientRequest.l() == null) ^ (l() == null)) {
            return false;
        }
        if (updateUserPoolClientRequest.l() != null && !updateUserPoolClientRequest.l().equals(l())) {
            return false;
        }
        if ((updateUserPoolClientRequest.m() == null) ^ (m() == null)) {
            return false;
        }
        if (updateUserPoolClientRequest.m() != null && !updateUserPoolClientRequest.m().equals(m())) {
            return false;
        }
        if ((updateUserPoolClientRequest.n() == null) ^ (n() == null)) {
            return false;
        }
        if (updateUserPoolClientRequest.n() != null && !updateUserPoolClientRequest.n().equals(n())) {
            return false;
        }
        if ((updateUserPoolClientRequest.o() == null) ^ (o() == null)) {
            return false;
        }
        if (updateUserPoolClientRequest.o() != null && !updateUserPoolClientRequest.o().equals(o())) {
            return false;
        }
        if ((updateUserPoolClientRequest.p() == null) ^ (p() == null)) {
            return false;
        }
        if (updateUserPoolClientRequest.p() != null && !updateUserPoolClientRequest.p().equals(p())) {
            return false;
        }
        if ((updateUserPoolClientRequest.q() == null) ^ (q() == null)) {
            return false;
        }
        if (updateUserPoolClientRequest.q() != null && !updateUserPoolClientRequest.q().equals(q())) {
            return false;
        }
        if ((updateUserPoolClientRequest.r() == null) ^ (r() == null)) {
            return false;
        }
        if (updateUserPoolClientRequest.r() != null && !updateUserPoolClientRequest.r().equals(r())) {
            return false;
        }
        if ((updateUserPoolClientRequest.s() == null) ^ (s() == null)) {
            return false;
        }
        if (updateUserPoolClientRequest.s() != null && !updateUserPoolClientRequest.s().equals(s())) {
            return false;
        }
        if ((updateUserPoolClientRequest.t() == null) ^ (t() == null)) {
            return false;
        }
        if (updateUserPoolClientRequest.t() != null && !updateUserPoolClientRequest.t().equals(t())) {
            return false;
        }
        if ((updateUserPoolClientRequest.v() == null) ^ (v() == null)) {
            return false;
        }
        if (updateUserPoolClientRequest.v() != null && !updateUserPoolClientRequest.v().equals(v())) {
            return false;
        }
        if ((updateUserPoolClientRequest.w() == null) ^ (w() == null)) {
            return false;
        }
        return updateUserPoolClientRequest.w() == null || updateUserPoolClientRequest.w().equals(w());
    }
}
