package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class SchemaAttributeType implements Serializable {
    private String a;
    private String b;
    private Boolean c;
    private Boolean d;
    private Boolean e;
    private NumberAttributeConstraintsType f;
    private StringAttributeConstraintsType g;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public SchemaAttributeType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public SchemaAttributeType d(String str) {
        this.b = str;
        return this;
    }

    public void a(AttributeDataType attributeDataType) {
        this.b = attributeDataType.toString();
    }

    public SchemaAttributeType b(AttributeDataType attributeDataType) {
        this.b = attributeDataType.toString();
        return this;
    }

    public Boolean c() {
        return this.c;
    }

    public Boolean d() {
        return this.c;
    }

    public void a(Boolean bool) {
        this.c = bool;
    }

    public SchemaAttributeType b(Boolean bool) {
        this.c = bool;
        return this;
    }

    public Boolean e() {
        return this.d;
    }

    public Boolean f() {
        return this.d;
    }

    public void c(Boolean bool) {
        this.d = bool;
    }

    public SchemaAttributeType d(Boolean bool) {
        this.d = bool;
        return this;
    }

    public Boolean g() {
        return this.e;
    }

    public Boolean h() {
        return this.e;
    }

    public void e(Boolean bool) {
        this.e = bool;
    }

    public SchemaAttributeType f(Boolean bool) {
        this.e = bool;
        return this;
    }

    public NumberAttributeConstraintsType i() {
        return this.f;
    }

    public void a(NumberAttributeConstraintsType numberAttributeConstraintsType) {
        this.f = numberAttributeConstraintsType;
    }

    public SchemaAttributeType b(NumberAttributeConstraintsType numberAttributeConstraintsType) {
        this.f = numberAttributeConstraintsType;
        return this;
    }

    public StringAttributeConstraintsType j() {
        return this.g;
    }

    public void a(StringAttributeConstraintsType stringAttributeConstraintsType) {
        this.g = stringAttributeConstraintsType;
    }

    public SchemaAttributeType b(StringAttributeConstraintsType stringAttributeConstraintsType) {
        this.g = stringAttributeConstraintsType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("Name: " + a() + ",");
        }
        if (b() != null) {
            sb.append("AttributeDataType: " + b() + ",");
        }
        if (d() != null) {
            sb.append("DeveloperOnlyAttribute: " + d() + ",");
        }
        if (f() != null) {
            sb.append("Mutable: " + f() + ",");
        }
        if (h() != null) {
            sb.append("Required: " + h() + ",");
        }
        if (i() != null) {
            sb.append("NumberAttributeConstraints: " + i() + ",");
        }
        if (j() != null) {
            sb.append("StringAttributeConstraints: " + j());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (d() == null ? 0 : d().hashCode())) * 31) + (f() == null ? 0 : f().hashCode())) * 31) + (h() == null ? 0 : h().hashCode())) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() != null ? j().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof SchemaAttributeType)) {
            return false;
        }
        SchemaAttributeType schemaAttributeType = (SchemaAttributeType) obj;
        if ((schemaAttributeType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (schemaAttributeType.a() != null && !schemaAttributeType.a().equals(a())) {
            return false;
        }
        if ((schemaAttributeType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (schemaAttributeType.b() != null && !schemaAttributeType.b().equals(b())) {
            return false;
        }
        if ((schemaAttributeType.d() == null) ^ (d() == null)) {
            return false;
        }
        if (schemaAttributeType.d() != null && !schemaAttributeType.d().equals(d())) {
            return false;
        }
        if ((schemaAttributeType.f() == null) ^ (f() == null)) {
            return false;
        }
        if (schemaAttributeType.f() != null && !schemaAttributeType.f().equals(f())) {
            return false;
        }
        if ((schemaAttributeType.h() == null) ^ (h() == null)) {
            return false;
        }
        if (schemaAttributeType.h() != null && !schemaAttributeType.h().equals(h())) {
            return false;
        }
        if ((schemaAttributeType.i() == null) ^ (i() == null)) {
            return false;
        }
        if (schemaAttributeType.i() != null && !schemaAttributeType.i().equals(i())) {
            return false;
        }
        if ((schemaAttributeType.j() == null) ^ (j() == null)) {
            return false;
        }
        return schemaAttributeType.j() == null || schemaAttributeType.j().equals(j());
    }
}
