package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ListUserImportJobsResult implements Serializable {
    private List<UserImportJobType> a;
    private String b;

    public List<UserImportJobType> a() {
        return this.a;
    }

    public void a(Collection<UserImportJobType> collection) {
        if (collection == null) {
            this.a = null;
        } else {
            this.a = new ArrayList(collection);
        }
    }

    public ListUserImportJobsResult a(UserImportJobType... userImportJobTypeArr) {
        if (a() == null) {
            this.a = new ArrayList(userImportJobTypeArr.length);
        }
        for (UserImportJobType userImportJobType : userImportJobTypeArr) {
            this.a.add(userImportJobType);
        }
        return this;
    }

    public ListUserImportJobsResult b(Collection<UserImportJobType> collection) {
        a(collection);
        return this;
    }

    public String b() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public ListUserImportJobsResult b(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("UserImportJobs: " + a() + ",");
        }
        if (b() != null) {
            sb.append("PaginationToken: " + b());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() != null ? b().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof ListUserImportJobsResult)) {
            return false;
        }
        ListUserImportJobsResult listUserImportJobsResult = (ListUserImportJobsResult) obj;
        if ((listUserImportJobsResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (listUserImportJobsResult.a() != null && !listUserImportJobsResult.a().equals(a())) {
            return false;
        }
        if ((listUserImportJobsResult.b() == null) ^ (b() == null)) {
            return false;
        }
        return listUserImportJobsResult.b() == null || listUserImportJobsResult.b().equals(b());
    }
}
