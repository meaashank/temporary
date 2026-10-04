package com.amazonaws.mobile.client.results;

import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ListDevicesResult {
    private List<Device> a;
    private String b;

    public ListDevicesResult(List<Device> list, String str) {
        this.a = list;
        this.b = str;
    }

    public List<Device> a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }
}
