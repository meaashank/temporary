package com.amazonaws.cognito.clientcontext.datacollection;

import android.content.Context;
import android.content.SharedPreferences;
import android.view.Display;
import android.view.WindowManager;
import com.prism.gaia.download.a;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.UUID;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class DeviceDataCollector extends DataCollector {
    protected static final String a = "AWS.Cognito.ContextData";
    protected static final String b = "CognitoDeviceId";
    private static final String c = "ANDROID";

    protected String a() {
        return "android_id";
    }

    @Override // com.amazonaws.cognito.clientcontext.datacollection.DataCollector
    public Map<String, String> a(Context context) {
        HashMap map = new HashMap();
        map.put(DataRecordKey.q, d());
        map.put(DataRecordKey.p, c);
        map.put(DataRecordKey.o, a());
        map.put(DataRecordKey.n, b(context));
        map.put(DataRecordKey.t, b());
        Display displayC = c(context);
        map.put(DataRecordKey.r, String.valueOf(displayC.getHeight()));
        map.put(DataRecordKey.s, String.valueOf(displayC.getWidth()));
        return map;
    }

    private Display c(Context context) {
        return ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
    }

    protected String b(Context context) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(a, 0);
        if (sharedPreferences == null) {
            return null;
        }
        String string = sharedPreferences.getString(b, null);
        if (string != null) {
            return string;
        }
        String str = UUID.randomUUID().toString() + ":" + new Date().getTime();
        SharedPreferences.Editor editorEdit = sharedPreferences.edit();
        editorEdit.putString(b, str);
        editorEdit.apply();
        return str;
    }

    protected String b() {
        return Locale.getDefault().toString();
    }

    private String d() {
        long rawOffset = c().getRawOffset();
        long hours = TimeUnit.MILLISECONDS.toHours(rawOffset);
        long minutes = TimeUnit.MILLISECONDS.toMinutes(rawOffset) - TimeUnit.HOURS.toMinutes(hours);
        StringBuilder sb = new StringBuilder();
        sb.append(hours < 0 ? a.q : "");
        sb.append(String.format(Locale.US, "%02d:%02d", Long.valueOf(Math.abs(hours)), Long.valueOf(minutes)));
        return sb.toString();
    }

    protected TimeZone c() {
        return TimeZone.getDefault();
    }
}
