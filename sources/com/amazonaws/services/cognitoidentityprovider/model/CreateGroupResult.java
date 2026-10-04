package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class CreateGroupResult implements Serializable {
    private GroupType a;

    public GroupType a() {
        return this.a;
    }

    public void a(GroupType groupType) {
        this.a = groupType;
    }

    public CreateGroupResult b(GroupType groupType) {
        this.a = groupType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("Group: " + a());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return 31 + (a() == null ? 0 : a().hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateGroupResult)) {
            return false;
        }
        CreateGroupResult createGroupResult = (CreateGroupResult) obj;
        if ((createGroupResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return createGroupResult.a() == null || createGroupResult.a().equals(a());
    }
}
