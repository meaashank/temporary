package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CreateIdentityPoolRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private Boolean b;
    private Map<String, String> c;
    private String d;
    private List<String> e;
    private List<CognitoIdentityProvider> f;
    private List<String> g;
    private Map<String, String> h;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public CreateIdentityPoolRequest b(String str) {
        this.a = str;
        return this;
    }

    public Boolean i() {
        return this.b;
    }

    public Boolean j() {
        return this.b;
    }

    public void a(Boolean bool) {
        this.b = bool;
    }

    public CreateIdentityPoolRequest b(Boolean bool) {
        this.b = bool;
        return this;
    }

    public Map<String, String> k() {
        return this.c;
    }

    public void a(Map<String, String> map) {
        this.c = map;
    }

    public CreateIdentityPoolRequest b(Map<String, String> map) {
        this.c = map;
        return this;
    }

    public CreateIdentityPoolRequest a(String str, String str2) {
        if (this.c == null) {
            this.c = new HashMap();
        }
        if (this.c.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.c.put(str, str2);
        return this;
    }

    public CreateIdentityPoolRequest l() {
        this.c = null;
        return this;
    }

    public String m() {
        return this.d;
    }

    public void c(String str) {
        this.d = str;
    }

    public CreateIdentityPoolRequest d(String str) {
        this.d = str;
        return this;
    }

    public List<String> n() {
        return this.e;
    }

    public void a(Collection<String> collection) {
        if (collection == null) {
            this.e = null;
        } else {
            this.e = new ArrayList(collection);
        }
    }

    public CreateIdentityPoolRequest a(String... strArr) {
        if (n() == null) {
            this.e = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.e.add(str);
        }
        return this;
    }

    public CreateIdentityPoolRequest b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public List<CognitoIdentityProvider> o() {
        return this.f;
    }

    public void c(Collection<CognitoIdentityProvider> collection) {
        if (collection == null) {
            this.f = null;
        } else {
            this.f = new ArrayList(collection);
        }
    }

    public CreateIdentityPoolRequest a(CognitoIdentityProvider... cognitoIdentityProviderArr) {
        if (o() == null) {
            this.f = new ArrayList(cognitoIdentityProviderArr.length);
        }
        for (CognitoIdentityProvider cognitoIdentityProvider : cognitoIdentityProviderArr) {
            this.f.add(cognitoIdentityProvider);
        }
        return this;
    }

    public CreateIdentityPoolRequest d(Collection<CognitoIdentityProvider> collection) {
        c(collection);
        return this;
    }

    public List<String> p() {
        return this.g;
    }

    public void e(Collection<String> collection) {
        if (collection == null) {
            this.g = null;
        } else {
            this.g = new ArrayList(collection);
        }
    }

    public CreateIdentityPoolRequest b(String... strArr) {
        if (p() == null) {
            this.g = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.g.add(str);
        }
        return this;
    }

    public CreateIdentityPoolRequest f(Collection<String> collection) {
        e(collection);
        return this;
    }

    public Map<String, String> q() {
        return this.h;
    }

    public void c(Map<String, String> map) {
        this.h = map;
    }

    public CreateIdentityPoolRequest d(Map<String, String> map) {
        this.h = map;
        return this;
    }

    public CreateIdentityPoolRequest b(String str, String str2) {
        if (this.h == null) {
            this.h = new HashMap();
        }
        if (this.h.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.h.put(str, str2);
        return this;
    }

    public CreateIdentityPoolRequest r() {
        this.h = null;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("IdentityPoolName: " + h() + ",");
        }
        if (j() != null) {
            sb.append("AllowUnauthenticatedIdentities: " + j() + ",");
        }
        if (k() != null) {
            sb.append("SupportedLoginProviders: " + k() + ",");
        }
        if (m() != null) {
            sb.append("DeveloperProviderName: " + m() + ",");
        }
        if (n() != null) {
            sb.append("OpenIdConnectProviderARNs: " + n() + ",");
        }
        if (o() != null) {
            sb.append("CognitoIdentityProviders: " + o() + ",");
        }
        if (p() != null) {
            sb.append("SamlProviderARNs: " + p() + ",");
        }
        if (q() != null) {
            sb.append("IdentityPoolTags: " + q());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (m() == null ? 0 : m().hashCode())) * 31) + (n() == null ? 0 : n().hashCode())) * 31) + (o() == null ? 0 : o().hashCode())) * 31) + (p() == null ? 0 : p().hashCode())) * 31) + (q() != null ? q().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateIdentityPoolRequest)) {
            return false;
        }
        CreateIdentityPoolRequest createIdentityPoolRequest = (CreateIdentityPoolRequest) obj;
        if ((createIdentityPoolRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (createIdentityPoolRequest.h() != null && !createIdentityPoolRequest.h().equals(h())) {
            return false;
        }
        if ((createIdentityPoolRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (createIdentityPoolRequest.j() != null && !createIdentityPoolRequest.j().equals(j())) {
            return false;
        }
        if ((createIdentityPoolRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (createIdentityPoolRequest.k() != null && !createIdentityPoolRequest.k().equals(k())) {
            return false;
        }
        if ((createIdentityPoolRequest.m() == null) ^ (m() == null)) {
            return false;
        }
        if (createIdentityPoolRequest.m() != null && !createIdentityPoolRequest.m().equals(m())) {
            return false;
        }
        if ((createIdentityPoolRequest.n() == null) ^ (n() == null)) {
            return false;
        }
        if (createIdentityPoolRequest.n() != null && !createIdentityPoolRequest.n().equals(n())) {
            return false;
        }
        if ((createIdentityPoolRequest.o() == null) ^ (o() == null)) {
            return false;
        }
        if (createIdentityPoolRequest.o() != null && !createIdentityPoolRequest.o().equals(o())) {
            return false;
        }
        if ((createIdentityPoolRequest.p() == null) ^ (p() == null)) {
            return false;
        }
        if (createIdentityPoolRequest.p() != null && !createIdentityPoolRequest.p().equals(p())) {
            return false;
        }
        if ((createIdentityPoolRequest.q() == null) ^ (q() == null)) {
            return false;
        }
        return createIdentityPoolRequest.q() == null || createIdentityPoolRequest.q().equals(q());
    }
}
