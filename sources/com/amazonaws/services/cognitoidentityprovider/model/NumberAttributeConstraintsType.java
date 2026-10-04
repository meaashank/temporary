package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class NumberAttributeConstraintsType implements Serializable {
    private String a;
    private String b;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public NumberAttributeConstraintsType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public NumberAttributeConstraintsType d(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("MinValue: " + a() + ",");
        }
        if (b() != null) {
            sb.append("MaxValue: " + b());
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
        if (obj == null || !(obj instanceof NumberAttributeConstraintsType)) {
            return false;
        }
        NumberAttributeConstraintsType numberAttributeConstraintsType = (NumberAttributeConstraintsType) obj;
        if ((numberAttributeConstraintsType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (numberAttributeConstraintsType.a() != null && !numberAttributeConstraintsType.a().equals(a())) {
            return false;
        }
        if ((numberAttributeConstraintsType.b() == null) ^ (b() == null)) {
            return false;
        }
        return numberAttributeConstraintsType.b() == null || numberAttributeConstraintsType.b().equals(b());
    }
}
