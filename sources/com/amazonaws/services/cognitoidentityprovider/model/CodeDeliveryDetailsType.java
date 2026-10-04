package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class CodeDeliveryDetailsType implements Serializable {
    private String a;
    private String b;
    private String c;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public CodeDeliveryDetailsType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public CodeDeliveryDetailsType d(String str) {
        this.b = str;
        return this;
    }

    public void a(DeliveryMediumType deliveryMediumType) {
        this.b = deliveryMediumType.toString();
    }

    public CodeDeliveryDetailsType b(DeliveryMediumType deliveryMediumType) {
        this.b = deliveryMediumType.toString();
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public CodeDeliveryDetailsType f(String str) {
        this.c = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("Destination: " + a() + ",");
        }
        if (b() != null) {
            sb.append("DeliveryMedium: " + b() + ",");
        }
        if (c() != null) {
            sb.append("AttributeName: " + c());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() != null ? c().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CodeDeliveryDetailsType)) {
            return false;
        }
        CodeDeliveryDetailsType codeDeliveryDetailsType = (CodeDeliveryDetailsType) obj;
        if ((codeDeliveryDetailsType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (codeDeliveryDetailsType.a() != null && !codeDeliveryDetailsType.a().equals(a())) {
            return false;
        }
        if ((codeDeliveryDetailsType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (codeDeliveryDetailsType.b() != null && !codeDeliveryDetailsType.b().equals(b())) {
            return false;
        }
        if ((codeDeliveryDetailsType.c() == null) ^ (c() == null)) {
            return false;
        }
        return codeDeliveryDetailsType.c() == null || codeDeliveryDetailsType.c().equals(c());
    }
}
