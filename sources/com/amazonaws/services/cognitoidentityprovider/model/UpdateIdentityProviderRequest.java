package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class UpdateIdentityProviderRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private Map<String, String> c;
    private Map<String, String> d;
    private List<String> e;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UpdateIdentityProviderRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public UpdateIdentityProviderRequest d(String str) {
        this.b = str;
        return this;
    }

    public Map<String, String> j() {
        return this.c;
    }

    public void a(Map<String, String> map) {
        this.c = map;
    }

    public UpdateIdentityProviderRequest b(Map<String, String> map) {
        this.c = map;
        return this;
    }

    public UpdateIdentityProviderRequest a(String str, String str2) {
        if (this.c == null) {
            this.c = new HashMap();
        }
        if (this.c.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.c.put(str, str2);
        return this;
    }

    public UpdateIdentityProviderRequest k() {
        this.c = null;
        return this;
    }

    public Map<String, String> l() {
        return this.d;
    }

    public void c(Map<String, String> map) {
        this.d = map;
    }

    public UpdateIdentityProviderRequest d(Map<String, String> map) {
        this.d = map;
        return this;
    }

    public UpdateIdentityProviderRequest b(String str, String str2) {
        if (this.d == null) {
            this.d = new HashMap();
        }
        if (this.d.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.d.put(str, str2);
        return this;
    }

    public UpdateIdentityProviderRequest m() {
        this.d = null;
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

    public UpdateIdentityProviderRequest a(String... strArr) {
        if (n() == null) {
            this.e = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.e.add(str);
        }
        return this;
    }

    public UpdateIdentityProviderRequest b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("ProviderName: " + i() + ",");
        }
        if (j() != null) {
            sb.append("ProviderDetails: " + j() + ",");
        }
        if (l() != null) {
            sb.append("AttributeMapping: " + l() + ",");
        }
        if (n() != null) {
            sb.append("IdpIdentifiers: " + n());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (l() == null ? 0 : l().hashCode())) * 31) + (n() != null ? n().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UpdateIdentityProviderRequest)) {
            return false;
        }
        UpdateIdentityProviderRequest updateIdentityProviderRequest = (UpdateIdentityProviderRequest) obj;
        if ((updateIdentityProviderRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (updateIdentityProviderRequest.h() != null && !updateIdentityProviderRequest.h().equals(h())) {
            return false;
        }
        if ((updateIdentityProviderRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (updateIdentityProviderRequest.i() != null && !updateIdentityProviderRequest.i().equals(i())) {
            return false;
        }
        if ((updateIdentityProviderRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (updateIdentityProviderRequest.j() != null && !updateIdentityProviderRequest.j().equals(j())) {
            return false;
        }
        if ((updateIdentityProviderRequest.l() == null) ^ (l() == null)) {
            return false;
        }
        if (updateIdentityProviderRequest.l() != null && !updateIdentityProviderRequest.l().equals(l())) {
            return false;
        }
        if ((updateIdentityProviderRequest.n() == null) ^ (n() == null)) {
            return false;
        }
        return updateIdentityProviderRequest.n() == null || updateIdentityProviderRequest.n().equals(n());
    }
}
