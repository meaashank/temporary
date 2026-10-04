package com.amazonaws.services.cognitoidentity.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DeleteIdentitiesResult implements Serializable {
    private List<UnprocessedIdentityId> a;

    public List<UnprocessedIdentityId> a() {
        return this.a;
    }

    public void a(Collection<UnprocessedIdentityId> collection) {
        if (collection == null) {
            this.a = null;
        } else {
            this.a = new ArrayList(collection);
        }
    }

    public DeleteIdentitiesResult a(UnprocessedIdentityId... unprocessedIdentityIdArr) {
        if (a() == null) {
            this.a = new ArrayList(unprocessedIdentityIdArr.length);
        }
        for (UnprocessedIdentityId unprocessedIdentityId : unprocessedIdentityIdArr) {
            this.a.add(unprocessedIdentityId);
        }
        return this;
    }

    public DeleteIdentitiesResult b(Collection<UnprocessedIdentityId> collection) {
        a(collection);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("UnprocessedIdentityIds: " + a());
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
        if (obj == null || !(obj instanceof DeleteIdentitiesResult)) {
            return false;
        }
        DeleteIdentitiesResult deleteIdentitiesResult = (DeleteIdentitiesResult) obj;
        if ((deleteIdentitiesResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return deleteIdentitiesResult.a() == null || deleteIdentitiesResult.a().equals(a());
    }
}
