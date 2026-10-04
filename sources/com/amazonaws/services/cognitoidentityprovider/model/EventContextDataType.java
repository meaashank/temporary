package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class EventContextDataType implements Serializable {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public EventContextDataType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public EventContextDataType d(String str) {
        this.b = str;
        return this;
    }

    public String c() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public EventContextDataType f(String str) {
        this.c = str;
        return this;
    }

    public String d() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public EventContextDataType h(String str) {
        this.d = str;
        return this;
    }

    public String e() {
        return this.e;
    }

    public void i(String str) {
        this.e = str;
    }

    public EventContextDataType j(String str) {
        this.e = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("IpAddress: " + a() + ",");
        }
        if (b() != null) {
            sb.append("DeviceName: " + b() + ",");
        }
        if (c() != null) {
            sb.append("Timezone: " + c() + ",");
        }
        if (d() != null) {
            sb.append("City: " + d() + ",");
        }
        if (e() != null) {
            sb.append("Country: " + e());
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
        if (obj == null || !(obj instanceof EventContextDataType)) {
            return false;
        }
        EventContextDataType eventContextDataType = (EventContextDataType) obj;
        if ((eventContextDataType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (eventContextDataType.a() != null && !eventContextDataType.a().equals(a())) {
            return false;
        }
        if ((eventContextDataType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (eventContextDataType.b() != null && !eventContextDataType.b().equals(b())) {
            return false;
        }
        if ((eventContextDataType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (eventContextDataType.c() != null && !eventContextDataType.c().equals(c())) {
            return false;
        }
        if ((eventContextDataType.d() == null) ^ (d() == null)) {
            return false;
        }
        if (eventContextDataType.d() != null && !eventContextDataType.d().equals(d())) {
            return false;
        }
        if ((eventContextDataType.e() == null) ^ (e() == null)) {
            return false;
        }
        return eventContextDataType.e() == null || eventContextDataType.e().equals(e());
    }
}
