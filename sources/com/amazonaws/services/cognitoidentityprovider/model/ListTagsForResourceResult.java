package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ListTagsForResourceResult implements Serializable {
    private Map<String, String> a;

    public Map<String, String> a() {
        return this.a;
    }

    public void a(Map<String, String> map) {
        this.a = map;
    }

    public ListTagsForResourceResult b(Map<String, String> map) {
        this.a = map;
        return this;
    }

    public ListTagsForResourceResult a(String str, String str2) {
        if (this.a == null) {
            this.a = new HashMap();
        }
        if (this.a.containsKey(str)) {
            throw new IllegalArgumentException("Duplicated keys (" + str.toString() + ") are provided.");
        }
        this.a.put(str, str2);
        return this;
    }

    public ListTagsForResourceResult b() {
        this.a = null;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("Tags: " + a());
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
        if (obj == null || !(obj instanceof ListTagsForResourceResult)) {
            return false;
        }
        ListTagsForResourceResult listTagsForResourceResult = (ListTagsForResourceResult) obj;
        if ((listTagsForResourceResult.a() == null) ^ (a() == null)) {
            return false;
        }
        return listTagsForResourceResult.a() == null || listTagsForResourceResult.a().equals(a());
    }
}
