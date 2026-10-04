package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class LookupDeveloperIdentityResult implements Serializable {
    private String a;
    private List<String> b;
    private String c;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public LookupDeveloperIdentityResult b(String str) {
        this.a = str;
        return this;
    }

    public List<String> b() {
        return this.b;
    }

    public void a(Collection<String> collection) {
        if (collection == null) {
            this.b = null;
        } else {
            this.b = new ArrayList(collection);
        }
    }

    public LookupDeveloperIdentityResult a(String... strArr) {
        if (b() == null) {
            this.b = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.b.add(str);
        }
        return this;
    }

    public LookupDeveloperIdentityResult b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public String c() {
        return this.c;
    }

    public void c(String str) {
        this.c = str;
    }

    public LookupDeveloperIdentityResult d(String str) {
        this.c = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("IdentityId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("DeveloperUserIdentifierList: " + b() + ",");
        }
        if (c() != null) {
            sb.append("NextToken: " + c());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() != null ? c().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof LookupDeveloperIdentityResult)) {
            return false;
        }
        LookupDeveloperIdentityResult lookupDeveloperIdentityResult = (LookupDeveloperIdentityResult) obj;
        if ((lookupDeveloperIdentityResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (lookupDeveloperIdentityResult.a() != null && !lookupDeveloperIdentityResult.a().equals(a())) {
            return false;
        }
        if ((lookupDeveloperIdentityResult.b() == null) ^ (b() == null)) {
            return false;
        }
        if (lookupDeveloperIdentityResult.b() != null && !lookupDeveloperIdentityResult.b().equals(b())) {
            return false;
        }
        if ((lookupDeveloperIdentityResult.c() == null) ^ (c() == null)) {
            return false;
        }
        return lookupDeveloperIdentityResult.c() == null || lookupDeveloperIdentityResult.c().equals(c());
    }
}
