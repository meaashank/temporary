package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class TagResourceRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private Map<String, String> b;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public TagResourceRequest b(String str) {
        this.a = str;
        return this;
    }

    public Map<String, String> i() {
        return this.b;
    }

    public void a(Map<String, String> map) {
        this.b = map;
    }

    public TagResourceRequest b(Map<String, String> map) {
        this.b = map;
        return this;
    }

    public TagResourceRequest a(String str, String str2) {
        if (this.b == null) {
            this.b = new HashMap();
        }
        if (this.b.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.b.put(str, str2);
        return this;
    }

    public TagResourceRequest j() {
        this.b = null;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("ResourceArn: " + h() + ",");
        }
        if (i() != null) {
            sb.append("Tags: " + i());
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
        if (obj == null || !(obj instanceof TagResourceRequest)) {
            return false;
        }
        TagResourceRequest tagResourceRequest = (TagResourceRequest) obj;
        if ((tagResourceRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (tagResourceRequest.h() != null && !tagResourceRequest.h().equals(h())) {
            return false;
        }
        if ((tagResourceRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        return tagResourceRequest.i() == null || tagResourceRequest.i().equals(i());
    }
}
