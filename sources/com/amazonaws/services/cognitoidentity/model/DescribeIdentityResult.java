package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DescribeIdentityResult implements Serializable {
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

    public DescribeIdentityResult b(String str) {
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

    public DescribeIdentityResult a(String... strArr) {
        if (b() == null) {
            this.b = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.b.add(str);
        }
        return this;
    }

    public DescribeIdentityResult b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public Date c() {
        return this.c;
    }

    public void a(Date date) {
        this.c = date;
    }

    public DescribeIdentityResult b(Date date) {
        this.c = date;
        return this;
    }

    public Date d() {
        return this.d;
    }

    public void c(Date date) {
        this.d = date;
    }

    public DescribeIdentityResult d(Date date) {
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
        if (obj == null || !(obj instanceof DescribeIdentityResult)) {
            return false;
        }
        DescribeIdentityResult describeIdentityResult = (DescribeIdentityResult) obj;
        if ((describeIdentityResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (describeIdentityResult.a() != null && !describeIdentityResult.a().equals(a())) {
            return false;
        }
        if ((describeIdentityResult.b() == null) ^ (b() == null)) {
            return false;
        }
        if (describeIdentityResult.b() != null && !describeIdentityResult.b().equals(b())) {
            return false;
        }
        if ((describeIdentityResult.c() == null) ^ (c() == null)) {
            return false;
        }
        if (describeIdentityResult.c() != null && !describeIdentityResult.c().equals(c())) {
            return false;
        }
        if ((describeIdentityResult.d() == null) ^ (d() == null)) {
            return false;
        }
        return describeIdentityResult.d() == null || describeIdentityResult.d().equals(d());
    }
}
