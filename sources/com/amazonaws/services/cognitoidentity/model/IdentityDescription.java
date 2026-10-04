package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class IdentityDescription implements Serializable {
    private String a;
    private List<String> b;
    private Date c;
    private Date d;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public IdentityDescription b(String str) {
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

    public IdentityDescription a(String... strArr) {
        if (b() == null) {
            this.b = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.b.add(str);
        }
        return this;
    }

    public IdentityDescription b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public Date c() {
        return this.c;
    }

    public void a(Date date) {
        this.c = date;
    }

    public IdentityDescription b(Date date) {
        this.c = date;
        return this;
    }

    public Date d() {
        return this.d;
    }

    public void c(Date date) {
        this.d = date;
    }

    public IdentityDescription d(Date date) {
        this.d = date;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("IdentityId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("Logins: " + b() + ",");
        }
        if (c() != null) {
            sb.append("CreationDate: " + c() + ",");
        }
        if (d() != null) {
            sb.append("LastModifiedDate: " + d());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() != null ? d().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof IdentityDescription)) {
            return false;
        }
        IdentityDescription identityDescription = (IdentityDescription) obj;
        if ((identityDescription.a() == null) ^ (a() == null)) {
            return false;
        }
        if (identityDescription.a() != null && !identityDescription.a().equals(a())) {
            return false;
        }
        if ((identityDescription.b() == null) ^ (b() == null)) {
            return false;
        }
        if (identityDescription.b() != null && !identityDescription.b().equals(b())) {
            return false;
        }
        if ((identityDescription.c() == null) ^ (c() == null)) {
            return false;
        }
        if (identityDescription.c() != null && !identityDescription.c().equals(c())) {
            return false;
        }
        if ((identityDescription.d() == null) ^ (d() == null)) {
            return false;
        }
        return identityDescription.d() == null || identityDescription.d().equals(d());
    }
}
