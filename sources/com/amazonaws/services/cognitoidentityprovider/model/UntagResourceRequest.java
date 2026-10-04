package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class UntagResourceRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private List<String> b;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UntagResourceRequest b(String str) {
        this.a = str;
        return this;
    }

    public List<String> i() {
        return this.b;
    }

    public void a(Collection<String> collection) {
        if (collection == null) {
            this.b = null;
        } else {
            this.b = new ArrayList(collection);
        }
    }

    public UntagResourceRequest a(String... strArr) {
        if (i() == null) {
            this.b = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.b.add(str);
        }
        return this;
    }

    public UntagResourceRequest b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("ResourceArn: " + h() + ",");
        }
        if (i() != null) {
            sb.append("TagKeys: " + i());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() != null ? i().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UntagResourceRequest)) {
            return false;
        }
        UntagResourceRequest untagResourceRequest = (UntagResourceRequest) obj;
        if ((untagResourceRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (untagResourceRequest.h() != null && !untagResourceRequest.h().equals(h())) {
            return false;
        }
        if ((untagResourceRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        return untagResourceRequest.i() == null || untagResourceRequest.i().equals(i());
    }
}
