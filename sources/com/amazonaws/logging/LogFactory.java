package com.amazonaws.logging;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class LogFactory {
    private static final String a = "LogFactory";
    private static final String b = "org.apache.commons.logging.LogFactory";
    private static Map<String, Log> c = new HashMap();

    public static synchronized Log a(Class cls) {
        return a(cls.getSimpleName());
    }

    public static synchronized Log a(String str) {
        Log androidLog;
        Log apacheCommonsLogging;
        Exception e;
        androidLog = c.get(str);
        if (androidLog == null) {
            if (a()) {
                try {
                    apacheCommonsLogging = new ApacheCommonsLogging(str);
                    try {
                        c.put(str, apacheCommonsLogging);
                    } catch (Exception e2) {
                        e = e2;
                        android.util.Log.w(a, "Could not create log from org.apache.commons.logging.LogFactory", e);
                    }
                } catch (Exception e3) {
                    apacheCommonsLogging = androidLog;
                    e = e3;
                }
                androidLog = apacheCommonsLogging;
            }
            if (androidLog == null) {
                androidLog = new AndroidLog(str);
                c.put(str, androidLog);
            }
        }
        return androidLog;
    }

    private static boolean a() {
        try {
            Class.forName(b);
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        } catch (Exception e) {
            android.util.Log.e(a, e.getMessage());
            return false;
        }
    }
}
