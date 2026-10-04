package com.amazonaws.cognito.clientcontext.datacollection;

import android.content.Context;
import android.os.Build;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class BuildDataCollector extends DataCollector {
    @Override // com.amazonaws.cognito.clientcontext.datacollection.DataCollector
    public Map<String, String> a(Context context) {
        HashMap map = new HashMap();
        map.put(DataRecordKey.e, Build.BRAND);
        map.put(DataRecordKey.f, Build.FINGERPRINT);
        map.put(DataRecordKey.g, Build.HARDWARE);
        map.put(DataRecordKey.i, Build.MODEL);
        map.put(DataRecordKey.j, Build.PRODUCT);
        map.put(DataRecordKey.k, Build.TYPE);
        map.put(DataRecordKey.l, Build.VERSION.RELEASE);
        map.put(DataRecordKey.m, Build.VERSION.SDK);
        return map;
    }
}
