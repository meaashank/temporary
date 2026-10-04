package com.amazonaws;

import java.util.EnumMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public final class RequestClientOptions {
    public static final int a = 131073;
    private static final int b = 17;
    private final Map<Marker, String> c = new EnumMap(Marker.class);

    public enum Marker {
        USER_AGENT
    }

    @Deprecated
    public String a() {
        return a(Marker.USER_AGENT);
    }

    public String a(Marker marker) {
        return this.c.get(marker);
    }

    public void a(Marker marker, String str) {
        this.c.put(marker, str);
    }

    @Deprecated
    public void a(String str) {
        b(str);
    }

    public void b(String str) {
        String str2 = this.c.get(Marker.USER_AGENT);
        if (str2 == null) {
            str2 = "";
        }
        a(Marker.USER_AGENT, a(str2, str));
    }

    private String a(String str, String str2) {
        if (str.contains(str2)) {
            return str;
        }
        return str + " " + str2;
    }
}
