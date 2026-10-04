package com.amazonaws.cognito.clientcontext.datacollection;

import android.content.Context;
import android.telephony.TelephonyManager;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class TelephonyDataCollector extends DataCollector {
    @Override // com.amazonaws.cognito.clientcontext.datacollection.DataCollector
    public Map<String, String> a(Context context) {
        HashMap map = new HashMap();
        TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null) {
            map.put(DataRecordKey.u, String.valueOf(telephonyManager.hasIccCard()));
            map.put(DataRecordKey.v, String.valueOf(telephonyManager.isNetworkRoaming()));
            map.put(DataRecordKey.w, telephonyManager.getNetworkOperatorName());
            map.put(DataRecordKey.x, String.valueOf(telephonyManager.getNetworkType()));
            map.put(DataRecordKey.y, String.valueOf(telephonyManager.getPhoneType()));
            if (telephonyManager.getSimState() == 5) {
                map.put(DataRecordKey.z, String.valueOf(telephonyManager.getSimCountryIso()));
                map.put(DataRecordKey.A, String.valueOf(telephonyManager.getSimOperatorName()));
            }
        }
        return map;
    }
}
