package com.amazonaws.services.cognitoidentity.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class UnlinkIdentityRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private Map<String, String> b;
    private List<String> c;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UnlinkIdentityRequest b(String str) {
        this.a = str;
        return this;
    }

    public Map<String, String> i() {
        return this.b;
    }

    public void a(Map<String, String> map) {
        this.b = map;
    }

    public UnlinkIdentityRequest b(Map<String, String> map) {
        this.b = map;
        return this;
    }

    public UnlinkIdentityRequest a(String str, String str2) {
        if (this.b == null) {
            this.b = new HashMap();
        }
        if (this.b.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.b.put(str, str2);
        return this;
    }

    public UnlinkIdentityRequest j() {
        this.b = null;
        return this;
    }

    public List<String> k() {
        return this.c;
    }

    public void a(Collection<String> collection) {
        if (collection == null) {
            this.c = null;
        } else {
            this.c = new ArrayList(collection);
        }
    }

    public UnlinkIdentityRequest a(String... strArr) {
        if (k() == null) {
            this.c = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.c.add(str);
        }
        return this;
    }

    public UnlinkIdentityRequest b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("IdentityId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("Logins: " + i() + ",");
        }
        if (k() != null) {
            sb.append("LoginsToRemove: " + k());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (k() != null ? k().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UnlinkIdentityRequest)) {
            return false;
        }
        UnlinkIdentityRequest unlinkIdentityRequest = (UnlinkIdentityRequest) obj;
        if ((unlinkIdentityRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (unlinkIdentityRequest.h() != null && !unlinkIdentityRequest.h().equals(h())) {
            return false;
        }
        if ((unlinkIdentityRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (unlinkIdentityRequest.i() != null && !unlinkIdentityRequest.i().equals(i())) {
            return false;
        }
        if ((unlinkIdentityRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        return unlinkIdentityRequest.k() == null || unlinkIdentityRequest.k().equals(k());
    }
}
