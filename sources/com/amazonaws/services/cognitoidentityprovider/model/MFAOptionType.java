package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class MFAOptionType implements Serializable {
    private String a;
    private String b;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public MFAOptionType b(String str) {
        this.a = str;
        return this;
    }

    public void a(DeliveryMediumType deliveryMediumType) {
        this.a = deliveryMediumType.toString();
    }

    public MFAOptionType b(DeliveryMediumType deliveryMediumType) {
        this.a = deliveryMediumType.toString();
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public MFAOptionType d(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("DeliveryMedium: " + a() + ",");
        }
        if (b() != null) {
            sb.append("AttributeName: " + b());
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
        if (obj == null || !(obj instanceof MFAOptionType)) {
            return false;
        }
        MFAOptionType mFAOptionType = (MFAOptionType) obj;
        if ((mFAOptionType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (mFAOptionType.a() != null && !mFAOptionType.a().equals(a())) {
            return false;
        }
        if ((mFAOptionType.b() == null) ^ (b() == null)) {
            return false;
        }
        return mFAOptionType.b() == null || mFAOptionType.b().equals(b());
    }
}
