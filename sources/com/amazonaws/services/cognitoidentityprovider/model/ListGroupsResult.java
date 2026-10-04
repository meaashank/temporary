package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ListGroupsResult implements Serializable {
    private List<GroupType> a;
    private String b;

    public List<GroupType> a() {
        return this.a;
    }

    public void a(Collection<GroupType> collection) {
        if (collection == null) {
            this.a = null;
        } else {
            this.a = new ArrayList(collection);
        }
    }

    public ListGroupsResult a(GroupType... groupTypeArr) {
        if (a() == null) {
            this.a = new ArrayList(groupTypeArr.length);
        }
        for (GroupType groupType : groupTypeArr) {
            this.a.add(groupType);
        }
        return this;
    }

    public ListGroupsResult b(Collection<GroupType> collection) {
        a(collection);
        return this;
    }

    public String b() {
        return this.b;
    }

    public void a(String str) {
        this.b = str;
    }

    public ListGroupsResult b(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("Groups: " + a() + ",");
        }
        if (b() != null) {
            sb.append("NextToken: " + b());
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
        if (obj == null || !(obj instanceof ListGroupsResult)) {
            return false;
        }
        ListGroupsResult listGroupsResult = (ListGroupsResult) obj;
        if ((listGroupsResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (listGroupsResult.a() != null && !listGroupsResult.a().equals(a())) {
            return false;
        }
        if ((listGroupsResult.b() == null) ^ (b() == null)) {
            return false;
        }
        return listGroupsResult.b() == null || listGroupsResult.b().equals(b());
    }
}
