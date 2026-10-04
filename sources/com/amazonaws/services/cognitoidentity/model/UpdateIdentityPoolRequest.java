package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class UpdateIdentityPoolRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private Boolean c;
    private Map<String, String> d;
    private String e;
    private List<String> f;
    private List<CognitoIdentityProvider> g;
    private List<String> h;
    private Map<String, String> i;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UpdateIdentityPoolRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public UpdateIdentityPoolRequest d(String str) {
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

    public UpdateIdentityPoolRequest b(Boolean bool) {
        this.c = bool;
        return this;
    }

    public Map<String, String> l() {
        return this.d;
    }

    public void a(Map<String, String> map) {
        this.d = map;
    }

    public UpdateIdentityPoolRequest b(Map<String, String> map) {
        this.d = map;
        return this;
    }

    public UpdateIdentityPoolRequest a(String str, String str2) {
        if (this.d == null) {
            this.d = new HashMap();
        }
        if (this.d.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.d.put(str, str2);
        return this;
    }

    public UpdateIdentityPoolRequest m() {
        this.d = null;
        return this;
    }

    public String n() {
        return this.e;
    }

    public void e(String str) {
        this.e = str;
    }

    public UpdateIdentityPoolRequest f(String str) {
        this.e = str;
        return this;
    }

    public List<String> o() {
        return this.f;
    }

    public void a(Collection<String> collection) {
        if (collection == null) {
            this.f = null;
        } else {
            this.f = new ArrayList(collection);
        }
    }

    public UpdateIdentityPoolRequest a(String... strArr) {
        if (o() == null) {
            this.f = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.f.add(str);
        }
        return this;
    }

    public UpdateIdentityPoolRequest b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public List<CognitoIdentityProvider> p() {
        return this.g;
    }

    public void c(Collection<CognitoIdentityProvider> collection) {
        if (collection == null) {
            this.g = null;
        } else {
            this.g = new ArrayList(collection);
        }
    }

    public UpdateIdentityPoolRequest a(CognitoIdentityProvider... cognitoIdentityProviderArr) {
        if (p() == null) {
            this.g = new ArrayList(cognitoIdentityProviderArr.length);
        }
        for (CognitoIdentityProvider cognitoIdentityProvider : cognitoIdentityProviderArr) {
            this.g.add(cognitoIdentityProvider);
        }
        return this;
    }

    public UpdateIdentityPoolRequest d(Collection<CognitoIdentityProvider> collection) {
        c(collection);
        return this;
    }

    public List<String> q() {
        return this.h;
    }

    public void e(Collection<String> collection) {
        if (collection == null) {
            this.h = null;
        } else {
            this.h = new ArrayList(collection);
        }
    }

    public UpdateIdentityPoolRequest b(String... strArr) {
        if (q() == null) {
            this.h = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.h.add(str);
        }
        return this;
    }

    public UpdateIdentityPoolRequest f(Collection<String> collection) {
        e(collection);
        return this;
    }

    public Map<String, String> r() {
        return this.i;
    }

    public void c(Map<String, String> map) {
        this.i = map;
    }

    public UpdateIdentityPoolRequest d(Map<String, String> map) {
        this.i = map;
        return this;
    }

    public UpdateIdentityPoolRequest b(String str, String str2) {
        if (this.i == null) {
            this.i = new HashMap();
        }
        if (this.i.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.i.put(str, str2);
        return this;
    }

    public UpdateIdentityPoolRequest s() {
        this.i = null;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("IdentityPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("IdentityPoolName: " + i() + ",");
        }
        if (k() != null) {
            sb.append("AllowUnauthenticatedIdentities: " + k() + ",");
        }
        if (l() != null) {
            sb.append("SupportedLoginProviders: " + l() + ",");
        }
        if (n() != null) {
            sb.append("DeveloperProviderName: " + n() + ",");
        }
        if (o() != null) {
            sb.append("OpenIdConnectProviderARNs: " + o() + ",");
        }
        if (p() != null) {
            sb.append("CognitoIdentityProviders: " + p() + ",");
        }
        if (q() != null) {
            sb.append("SamlProviderARNs: " + q() + ",");
        }
        if (r() != null) {
            sb.append("IdentityPoolTags: " + r());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (l() == null ? 0 : l().hashCode())) * 31) + (n() == null ? 0 : n().hashCode())) * 31) + (o() == null ? 0 : o().hashCode())) * 31) + (p() == null ? 0 : p().hashCode())) * 31) + (q() == null ? 0 : q().hashCode())) * 31) + (r() != null ? r().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UpdateIdentityPoolRequest)) {
            return false;
        }
        UpdateIdentityPoolRequest updateIdentityPoolRequest = (UpdateIdentityPoolRequest) obj;
        if ((updateIdentityPoolRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (updateIdentityPoolRequest.h() != null && !updateIdentityPoolRequest.h().equals(h())) {
            return false;
        }
        if ((updateIdentityPoolRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (updateIdentityPoolRequest.i() != null && !updateIdentityPoolRequest.i().equals(i())) {
            return false;
        }
        if ((updateIdentityPoolRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (updateIdentityPoolRequest.k() != null && !updateIdentityPoolRequest.k().equals(k())) {
            return false;
        }
        if ((updateIdentityPoolRequest.l() == null) ^ (l() == null)) {
            return false;
        }
        if (updateIdentityPoolRequest.l() != null && !updateIdentityPoolRequest.l().equals(l())) {
            return false;
        }
        if ((updateIdentityPoolRequest.n() == null) ^ (n() == null)) {
            return false;
        }
        if (updateIdentityPoolRequest.n() != null && !updateIdentityPoolRequest.n().equals(n())) {
            return false;
        }
        if ((updateIdentityPoolRequest.o() == null) ^ (o() == null)) {
            return false;
        }
        if (updateIdentityPoolRequest.o() != null && !updateIdentityPoolRequest.o().equals(o())) {
            return false;
        }
        if ((updateIdentityPoolRequest.p() == null) ^ (p() == null)) {
            return false;
        }
        if (updateIdentityPoolRequest.p() != null && !updateIdentityPoolRequest.p().equals(p())) {
            return false;
        }
        if ((updateIdentityPoolRequest.q() == null) ^ (q() == null)) {
            return false;
        }
        if (updateIdentityPoolRequest.q() != null && !updateIdentityPoolRequest.q().equals(q())) {
            return false;
        }
        if ((updateIdentityPoolRequest.r() == null) ^ (r() == null)) {
            return false;
        }
        return updateIdentityPoolRequest.r() == null || updateIdentityPoolRequest.r().equals(r());
    }
}
