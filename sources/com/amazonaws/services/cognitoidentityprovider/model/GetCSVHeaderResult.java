package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class GetCSVHeaderResult implements Serializable {
    private String a;
    private List<String> b;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public GetCSVHeaderResult b(String str) {
        this.a = str;
        return this;
    }

    public List<String> b() {
        return this.b;
    }

    public void a(Collection<String> collection) {
        if (collection == null) {
            this.b = null;
        } else {
            this.b = new ArrayList(collection);
        }
    }

    public GetCSVHeaderResult a(String... strArr) {
        if (b() == null) {
            this.b = new ArrayList(strArr.length);
        }
        for (String str : strArr) {
            this.b.add(str);
        }
        return this;
    }

    public GetCSVHeaderResult b(Collection<String> collection) {
        a(collection);
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("UserPoolId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("CSVHeader: " + b());
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
        if (obj == null || !(obj instanceof GetCSVHeaderResult)) {
            return false;
        }
        GetCSVHeaderResult getCSVHeaderResult = (GetCSVHeaderResult) obj;
        if ((getCSVHeaderResult.a() == null) ^ (a() == null)) {
            return false;
        }
        if (getCSVHeaderResult.a() != null && !getCSVHeaderResult.a().equals(a())) {
            return false;
        }
        if ((getCSVHeaderResult.b() == null) ^ (b() == null)) {
            return false;
        }
        return getCSVHeaderResult.b() == null || getCSVHeaderResult.b().equals(b());
    }
}
