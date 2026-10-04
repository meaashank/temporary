package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class UpdateIdentityPoolResult implements Serializable {
    private String a;
    private String b;
    private Boolean c;
    private Map<String, String> d;
    private String e;
    private List<String> f;
    private List<CognitoIdentityProvider> g;
    private List<String> h;
    private Map<String, String> i;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UpdateIdentityPoolResult b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public UpdateIdentityPoolResult d(String str) {
        this.b = str;
        return this;
    }

    public Boolean c() {
        return this.c;
    }

    public Boolean d() {
        return this.c;
    }

    public void a(Boolean bool) {
        this.c = bool;
    }

    public UpdateIdentityPoolResult b(Boolean bool) {
        this.c = bool;
        return this;
    }

    public Map<String, String> e() {
        return this.d;
    }

    public void a(Map<String, String> map) {
        this.d = map;
    }

    public UpdateIdentityPoolResult b(Map<String, String> map) {
        this.d = map;
        return this;
    }

    public UpdateIdentityPoolResult a(String str, String str2) {
        if (this.d == null) {
            this.d = new HashMap();
        }
        if (this.d.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.d.put(str, str2);
        return this;
    }

    public UpdateIdentityPoolResult f() {
        this.d = null;
        return this;
    }

    public String g() {
        return this.e;
    }

    public void e(String str) {
        this.e = str;
    }

    public UpdateIdentityPoolResult f(String str) {
        this.e = str;
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

    public UpdateIdentityPoolResult a(String... strArr) {
        if (h() == null) {
            this.f = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.f.add(str);
        }
        return this;
    }

    public UpdateIdentityPoolResult b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public List<CognitoIdentityProvider> i() {
        return this.g;
    }

    public void c(Collection<CognitoIdentityProvider> collection) {
        if (collection == null) {
            this.g = null;
        } else {
            this.g = new ArrayList(collection);
        }
    }

    public UpdateIdentityPoolResult a(CognitoIdentityProvider... cognitoIdentityProviderArr) {
        if (i() == null) {
            this.g = new ArrayList(cognitoIdentityProviderArr.length);
        }
        for (CognitoIdentityProvider cognitoIdentityProvider : cognitoIdentityProviderArr) {
            this.g.add(cognitoIdentityProvider);
        }
        return this;
    }

    public UpdateIdentityPoolResult d(Collection<CognitoIdentityProvider> collection) {
        c(collection);
        return this;
    }

    public List<String> j() {
        return this.h;
    }

    public void e(Collection<String> collection) {
        if (collection == null) {
            this.h = null;
        } else {
            this.h = new ArrayList(collection);
        }
    }

    public UpdateIdentityPoolResult b(String... strArr) {
        if (j() == null) {
            this.h = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.h.add(str);
        }
        return this;
    }

    public UpdateIdentityPoolResult f(Collection<String> collection) {
        e(collection);
        return this;
    }

    public Map<String, String> k() {
        return this.i;
    }

    public void c(Map<String, String> map) {
        this.i = map;
    }

    public UpdateIdentityPoolResult d(Map<String, String> map) {
        this.i = map;
        return this;
    }

    public UpdateIdentityPoolResult b(String str, String str2) {
        if (this.i == null) {
            this.i = new HashMap();
        }
        if (this.i.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.i.put(str, str2);
        return this;
    }

    public UpdateIdentityPoolResult l() {
        this.i = null;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("IdentityPoolId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("IdentityPoolName: " + b() + ",");
        }
        if (d() != null) {
            sb.append("AllowUnauthenticatedIdentities: " + d() + ",");
        }
        if (e() != null) {
            sb.append("SupportedLoginProviders: " + e() + ",");
        }
        if (g() != null) {
            sb.append("DeveloperProviderName: " + g() + ",");
        }
        if (h() != null) {
            sb.append("OpenIdConnectProviderARNs: " + h() + ",");
        }
        if (i() != null) {
            sb.append("CognitoIdentityProviders: " + i() + ",");
        }
        if (j() != null) {
            sb.append("SamlProviderARNs: " + j() + ",");
        }
        if (k() != null) {
            sb.append("IdentityPoolTags: " + k());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (d() == null ? 0 : d().hashCode())) * 31) + (e() == null ? 0 : e().hashCode())) * 31) + (g() == null ? 0 : g().hashCode())) * 31) + (h() == null ? 0 : h().hashCode())) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() != null ? k().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UpdateIdentityPoolResult)) {
            return false;
        }
        UpdateIdentityPoolResult updateIdentityPoolResult = (UpdateIdentityPoolResult) obj;
        if ((updateIdentityPoolResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (updateIdentityPoolResult.a() != null && !updateIdentityPoolResult.a().equals(a())) {
            return false;
        }
        if ((updateIdentityPoolResult.b() == null) ^ (b() == null)) {
            return false;
        }
        if (updateIdentityPoolResult.b() != null && !updateIdentityPoolResult.b().equals(b())) {
            return false;
        }
        if ((updateIdentityPoolResult.d() == null) ^ (d() == null)) {
            return false;
        }
        if (updateIdentityPoolResult.d() != null && !updateIdentityPoolResult.d().equals(d())) {
            return false;
        }
        if ((updateIdentityPoolResult.e() == null) ^ (e() == null)) {
            return false;
        }
        if (updateIdentityPoolResult.e() != null && !updateIdentityPoolResult.e().equals(e())) {
            return false;
        }
        if ((updateIdentityPoolResult.g() == null) ^ (g() == null)) {
            return false;
        }
        if (updateIdentityPoolResult.g() != null && !updateIdentityPoolResult.g().equals(g())) {
            return false;
        }
        if ((updateIdentityPoolResult.h() == null) ^ (h() == null)) {
            return false;
        }
        if (updateIdentityPoolResult.h() != null && !updateIdentityPoolResult.h().equals(h())) {
            return false;
        }
        if ((updateIdentityPoolResult.i() == null) ^ (i() == null)) {
            return false;
        }
        if (updateIdentityPoolResult.i() != null && !updateIdentityPoolResult.i().equals(i())) {
            return false;
        }
        if ((updateIdentityPoolResult.j() == null) ^ (j() == null)) {
            return false;
        }
        if (updateIdentityPoolResult.j() != null && !updateIdentityPoolResult.j().equals(j())) {
            return false;
        }
        if ((updateIdentityPoolResult.k() == null) ^ (k() == null)) {
            return false;
        }
        return updateIdentityPoolResult.k() == null || updateIdentityPoolResult.k().equals(k());
    }
}
