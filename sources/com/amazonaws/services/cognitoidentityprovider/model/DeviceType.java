package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DeviceType implements Serializable {
    private String a;
    private List<AttributeType> b;
    private Date c;
    private Date d;
    private Date e;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public DeviceType b(String str) {
        this.a = str;
        return this;
    }

    public List<AttributeType> b() {
        return this.b;
    }

    public void a(Collection<AttributeType> collection) {
        if (collection == null) {
            this.b = null;
        } else {
            this.b = new ArrayList(collection);
        }
    }

    public DeviceType a(AttributeType... attributeTypeArr) {
        if (b() == null) {
            this.b = new ArrayList(attributeTypeArr.length);
        }
        for (AttributeType attributeType : attributeTypeArr) {
            this.b.add(attributeType);
        }
        return this;
    }

    public DeviceType b(Collection<AttributeType> collection) {
        a(collection);
        return this;
    }

    public Date c() {
        return this.c;
    }

    public void a(Date date) {
        this.c = date;
    }

    public DeviceType b(Date date) {
        this.c = date;
        return this;
    }

    public Date d() {
        return this.d;
    }

    public void c(Date date) {
        this.d = date;
    }

    public DeviceType d(Date date) {
        this.d = date;
        return this;
    }

    public Date e() {
        return this.e;
    }

    public void e(Date date) {
        this.e = date;
    }

    public DeviceType f(Date date) {
        this.e = date;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("DeviceKey: " + a() + ",");
        }
        if (b() != null) {
            sb.append("DeviceAttributes: " + b() + ",");
        }
        if (c() != null) {
            sb.append("DeviceCreateDate: " + c() + ",");
        }
        if (d() != null) {
            sb.append("DeviceLastModifiedDate: " + d() + ",");
        }
        if (e() != null) {
            sb.append("DeviceLastAuthenticatedDate: " + e());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() == null ? 0 : d().hashCode())) * 31) + (e() != null ? e().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof DeviceType)) {
            return false;
        }
        DeviceType deviceType = (DeviceType) obj;
        if ((deviceType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (deviceType.a() != null && !deviceType.a().equals(a())) {
            return false;
        }
        if ((deviceType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (deviceType.b() != null && !deviceType.b().equals(b())) {
            return false;
        }
        if ((deviceType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (deviceType.c() != null && !deviceType.c().equals(c())) {
            return false;
        }
        if ((deviceType.d() == null) ^ (d() == null)) {
            return false;
        }
        if (deviceType.d() != null && !deviceType.d().equals(d())) {
            return false;
        }
        if ((deviceType.e() == null) ^ (e() == null)) {
            return false;
        }
        return deviceType.e() == null || deviceType.e().equals(e());
    }
}
