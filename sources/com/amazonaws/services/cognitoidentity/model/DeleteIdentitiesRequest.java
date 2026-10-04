package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DeleteIdentitiesRequest extends AmazonWebServiceRequest implements Serializable {
    private List<String> a;

    public List<String> h() {
        return this.a;
    }

    public void a(Collection<String> collection) {
        if (collection == null) {
            this.a = null;
        } else {
            this.a = new ArrayList(collection);
        }
    }

    public DeleteIdentitiesRequest a(String... strArr) {
        if (h() == null) {
            this.a = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.a.add(str);
        }
        return this;
    }

    public DeleteIdentitiesRequest b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("IdentityIdsToDelete: " + h());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return 31 + (h() == null ? 0 : h().hashCode());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DeleteIdentitiesRequest)) {
            return false;
        }
        DeleteIdentitiesRequest deleteIdentitiesRequest = (DeleteIdentitiesRequest) obj;
        if ((deleteIdentitiesRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        return deleteIdentitiesRequest.h() == null || deleteIdentitiesRequest.h().equals(h());
    }
}
