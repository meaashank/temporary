package com.amazonaws.mobileconnectors.cognitoidentityprovider.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.util.UUID;

/* JADX INFO: loaded from: classes.dex */
public class CognitoPinpointSharedContext {
    private static final Log a = LogFactory.a(CognitoPinpointSharedContext.class);
    private static final String b = "UniqueId";
    private static final String c = "515d6767-01b7-49e5-8273-c8d11b0f331d";

    public static String a(Context context, String str) {
        return a(context, str, b);
    }

    public static String a(Context context, String str, String str2) {
        if (context == null || str == null || str2 == null) {
            return null;
        }
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(str + c, 0);
            String string = sharedPreferences.getString(str2, null);
            if (string != null) {
                return string;
            }
            String string2 = UUID.randomUUID().toString();
            sharedPreferences.edit().putString(str2, string2).apply();
            return string2;
        } catch (Exception e) {
            a.e("Error while reading from SharedPreferences", e);
            return null;
        }
    }
}
