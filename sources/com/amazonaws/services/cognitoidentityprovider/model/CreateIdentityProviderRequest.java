package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CreateIdentityProviderRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;
    private Map<String, String> d;
    private Map<String, String> e;
    private List<String> f;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public CreateIdentityProviderRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public CreateIdentityProviderRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public CreateIdentityProviderRequest f(String str) {
        this.c = str;
        return this;
    }

    public void a(IdentityProviderTypeType identityProviderTypeType) {
        this.c = identityProviderTypeType.toString();
    }

    public CreateIdentityProviderRequest b(IdentityProviderTypeType identityProviderTypeType) {
        this.c = identityProviderTypeType.toString();
        return this;
    }

    public Map<String, String> k() {
        return this.d;
    }

    public void a(Map<String, String> map) {
        this.d = map;
    }

    public CreateIdentityProviderRequest b(Map<String, String> map) {
        this.d = map;
        return this;
    }

    public CreateIdentityProviderRequest a(String str, String str2) {
        if (this.d == null) {
            this.d = new HashMap();
        }
        if (this.d.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.d.put(str, str2);
        return this;
    }

    public CreateIdentityProviderRequest l() {
        this.d = null;
        return this;
    }

    public Map<String, String> m() {
        return this.e;
    }

    public void c(Map<String, String> map) {
        this.e = map;
    }

    public CreateIdentityProviderRequest d(Map<String, String> map) {
        this.e = map;
        return this;
    }

    public CreateIdentityProviderRequest b(String str, String str2) {
        if (this.e == null) {
            this.e = new HashMap();
        }
        if (this.e.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.e.put(str, str2);
        return this;
    }

    public CreateIdentityProviderRequest n() {
        this.e = null;
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

    public CreateIdentityProviderRequest a(String... strArr) {
        if (o() == null) {
            this.f = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.f.add(str);
        }
        return this;
    }

    public CreateIdentityProviderRequest b(Collection<String> collection) {
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
            sb.append("ProviderType: " + j() + ",");
        }
        if (k() != null) {
            sb.append("ProviderDetails: " + k() + ",");
        }
        if (m() != null) {
            sb.append("AttributeMapping: " + m() + ",");
        }
        if (o() != null) {
            sb.append("IdpIdentifiers: " + o());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (m() == null ? 0 : m().hashCode())) * 31) + (o() != null ? o().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateIdentityProviderRequest)) {
            return false;
        }
        CreateIdentityProviderRequest createIdentityProviderRequest = (CreateIdentityProviderRequest) obj;
        if ((createIdentityProviderRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (createIdentityProviderRequest.h() != null && !createIdentityProviderRequest.h().equals(h())) {
            return false;
        }
        if ((createIdentityProviderRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (createIdentityProviderRequest.i() != null && !createIdentityProviderRequest.i().equals(i())) {
            return false;
        }
        if ((createIdentityProviderRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (createIdentityProviderRequest.j() != null && !createIdentityProviderRequest.j().equals(j())) {
            return false;
        }
        if ((createIdentityProviderRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (createIdentityProviderRequest.k() != null && !createIdentityProviderRequest.k().equals(k())) {
            return false;
        }
        if ((createIdentityProviderRequest.m() == null) ^ (m() == null)) {
            return false;
        }
        if (createIdentityProviderRequest.m() != null && !createIdentityProviderRequest.m().equals(m())) {
            return false;
        }
        if ((createIdentityProviderRequest.o() == null) ^ (o() == null)) {
            return false;
        }
        return createIdentityProviderRequest.o() == null || createIdentityProviderRequest.o().equals(o());
    }
}
