package com.amazonaws.mobile.client.results;

import java.util.Date;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class Device {
    private final String a;
    private final Map<String, String> b;
    private final Date c;
    private final Date d;
    private final Date e;

    public Device(String str, Map<String, String> map, Date date, Date date2, Date date3) {
        this.a = str;
        this.b = map;
        this.c = date;
        this.d = date2;
        this.e = date3;
    }

    public String a() {
        return this.a;
    }

    public Map<String, String> b() {
        return this.b;
    }

    public Date c() {
        return this.c;
    }

    public Date d() {
        return this.d;
    }

    public Date e() {
        return this.e;
    }
}
