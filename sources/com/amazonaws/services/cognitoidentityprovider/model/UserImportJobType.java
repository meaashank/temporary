package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class UserImportJobType implements Serializable {
    private String a;
    private String b;
    private String c;
    private String d;
    private Date e;
    private Date f;
    private Date g;
    private String h;
    private String i;
    private Long j;
    private Long k;
    private Long l;
    private String m;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UserImportJobType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public UserImportJobType d(String str) {
        this.b = str;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public UserImportJobType f(String str) {
        this.c = str;
        return this;
    }

    public String d() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public UserImportJobType h(String str) {
        this.d = str;
        return this;
    }

    public Date e() {
        return this.e;
    }

    public void a(Date date) {
        this.e = date;
    }

    public UserImportJobType b(Date date) {
        this.e = date;
        return this;
    }

    public Date f() {
        return this.f;
    }

    public void c(Date date) {
        this.f = date;
    }

    public UserImportJobType d(Date date) {
        this.f = date;
        return this;
    }

    public Date g() {
        return this.g;
    }

    public void e(Date date) {
        this.g = date;
    }

    public UserImportJobType f(Date date) {
        this.g = date;
        return this;
    }

    public String h() {
        return this.h;
    }

    public void i(String str) {
        this.h = str;
    }

    public UserImportJobType j(String str) {
        this.h = str;
        return this;
    }

    public void a(UserImportJobStatusType userImportJobStatusType) {
        this.h = userImportJobStatusType.toString();
    }

    public UserImportJobType b(UserImportJobStatusType userImportJobStatusType) {
        this.h = userImportJobStatusType.toString();
        return this;
    }

    public String i() {
        return this.i;
    }

    public void k(String str) {
        this.i = str;
    }

    public UserImportJobType l(String str) {
        this.i = str;
        return this;
    }

    public Long j() {
        return this.j;
    }

    public void a(Long l) {
        this.j = l;
    }

    public UserImportJobType b(Long l) {
        this.j = l;
        return this;
    }

    public Long k() {
        return this.k;
    }

    public void c(Long l) {
        this.k = l;
    }

    public UserImportJobType d(Long l) {
        this.k = l;
        return this;
    }

    public Long l() {
        return this.l;
    }

    public void e(Long l) {
        this.l = l;
    }

    public UserImportJobType f(Long l) {
        this.l = l;
        return this;
    }

    public String m() {
        return this.m;
    }

    public void m(String str) {
        this.m = str;
    }

    public UserImportJobType n(String str) {
        this.m = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("JobName: " + a() + ",");
        }
        if (b() != null) {
            sb.append("JobId: " + b() + ",");
        }
        if (c() != null) {
            sb.append("UserPoolId: " + c() + ",");
        }
        if (d() != null) {
            sb.append("PreSignedUrl: " + d() + ",");
        }
        if (e() != null) {
            sb.append("CreationDate: " + e() + ",");
        }
        if (f() != null) {
            sb.append("StartDate: " + f() + ",");
        }
        if (g() != null) {
            sb.append("CompletionDate: " + g() + ",");
        }
        if (h() != null) {
            sb.append("Status: " + h() + ",");
        }
        if (i() != null) {
            sb.append("CloudWatchLogsRoleArn: " + i() + ",");
        }
        if (j() != null) {
            sb.append("ImportedUsers: " + j() + ",");
        }
        if (k() != null) {
            sb.append("SkippedUsers: " + k() + ",");
        }
        if (l() != null) {
            sb.append("FailedUsers: " + l() + ",");
        }
        if (m() != null) {
            sb.append("CompletionMessage: " + m());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((((((((((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() == null ? 0 : d().hashCode())) * 31) + (e() == null ? 0 : e().hashCode())) * 31) + (f() == null ? 0 : f().hashCode())) * 31) + (g() == null ? 0 : g().hashCode())) * 31) + (h() == null ? 0 : h().hashCode())) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (l() == null ? 0 : l().hashCode())) * 31) + (m() != null ? m().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UserImportJobType)) {
            return false;
        }
        UserImportJobType userImportJobType = (UserImportJobType) obj;
        if ((userImportJobType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (userImportJobType.a() != null && !userImportJobType.a().equals(a())) {
            return false;
        }
        if ((userImportJobType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (userImportJobType.b() != null && !userImportJobType.b().equals(b())) {
            return false;
        }
        if ((userImportJobType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (userImportJobType.c() != null && !userImportJobType.c().equals(c())) {
            return false;
        }
        if ((userImportJobType.d() == null) ^ (d() == null)) {
            return false;
        }
        if (userImportJobType.d() != null && !userImportJobType.d().equals(d())) {
            return false;
        }
        if ((userImportJobType.e() == null) ^ (e() == null)) {
            return false;
        }
        if (userImportJobType.e() != null && !userImportJobType.e().equals(e())) {
            return false;
        }
        if ((userImportJobType.f() == null) ^ (f() == null)) {
            return false;
        }
        if (userImportJobType.f() != null && !userImportJobType.f().equals(f())) {
            return false;
        }
        if ((userImportJobType.g() == null) ^ (g() == null)) {
            return false;
        }
        if (userImportJobType.g() != null && !userImportJobType.g().equals(g())) {
            return false;
        }
        if ((userImportJobType.h() == null) ^ (h() == null)) {
            return false;
        }
        if (userImportJobType.h() != null && !userImportJobType.h().equals(h())) {
            return false;
        }
        if ((userImportJobType.i() == null) ^ (i() == null)) {
            return false;
        }
        if (userImportJobType.i() != null && !userImportJobType.i().equals(i())) {
            return false;
        }
        if ((userImportJobType.j() == null) ^ (j() == null)) {
            return false;
        }
        if (userImportJobType.j() != null && !userImportJobType.j().equals(j())) {
            return false;
        }
        if ((userImportJobType.k() == null) ^ (k() == null)) {
            return false;
        }
        if (userImportJobType.k() != null && !userImportJobType.k().equals(k())) {
            return false;
        }
        if ((userImportJobType.l() == null) ^ (l() == null)) {
            return false;
        }
        if (userImportJobType.l() != null && !userImportJobType.l().equals(l())) {
            return false;
        }
        if ((userImportJobType.m() == null) ^ (m() == null)) {
            return false;
        }
        return userImportJobType.m() == null || userImportJobType.m().equals(m());
    }
}
