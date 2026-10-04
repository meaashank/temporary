package com.amazonaws.cognito.clientcontext.datacollection;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ApplicationDataCollector extends DataCollector {
    private static final String a = "ApplicationDataCollector";
    private static final int b = 0;

    @Override // com.amazonaws.cognito.clientcontext.datacollection.DataCollector
    public Map<String, String> a(Context context) {
        HashMap map = new HashMap();
        map.put(DataRecordKey.a, b(context));
        map.put(DataRecordKey.b, d(context));
        map.put(DataRecordKey.c, c(context));
        return map;
    }

    private String b(Context context) {
        return (String) context.getPackageManager().getApplicationLabel(context.getApplicationInfo());
    }

    private String c(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.i(a, "Unable to get app version. Provided package name could not be found.");
            return "";
        }
    }

    private String d(Context context) {
        return String.valueOf(context.getApplicationInfo().targetSdkVersion);
    }
}
