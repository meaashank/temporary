package com.amazonaws.cognito.clientcontext.data;

import android.content.Context;
import android.util.Base64;
import android.util.Log;
import com.amazonaws.cognito.clientcontext.datacollection.ContextDataAggregator;
import com.amazonaws.cognito.clientcontext.util.SignatureGenerator;
import com.facebook.share.internal.MessengerShareContentUtility;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class UserContextDataProvider {
    public static final String a = "ANDROID20171114";
    private static final String b = "UserContextDataProvider";
    private ContextDataAggregator c;
    private SignatureGenerator d;

    private static class InstanceHolder {
        private static final UserContextDataProvider a = new UserContextDataProvider();

        private InstanceHolder() {
        }
    }

    private UserContextDataProvider() {
        this(ContextDataAggregator.a(), new SignatureGenerator());
    }

    protected UserContextDataProvider(ContextDataAggregator contextDataAggregator, SignatureGenerator signatureGenerator) {
        this.c = contextDataAggregator;
        this.d = signatureGenerator;
    }

    public static UserContextDataProvider a() {
        return InstanceHolder.a;
    }

    public String a(Context context, String str, String str2, String str3) {
        new JSONObject();
        try {
            String string = a(this.c.a(context), str, str2).toString();
            return a(a(string, this.d.a(string, str3, a)));
        } catch (Exception unused) {
            Log.e(b, "Exception in creating JSON from context data");
            return null;
        }
    }

    private JSONObject a(Map<String, String> map, String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("contextData", new JSONObject(map));
        jSONObject.put("username", str);
        jSONObject.put("userPoolId", str2);
        jSONObject.put("timestamp", b());
        return jSONObject;
    }

    protected String b() {
        return String.valueOf(System.currentTimeMillis());
    }

    private JSONObject a(String str, String str2) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(MessengerShareContentUtility.ATTACHMENT_PAYLOAD, str);
        jSONObject.put("signature", str2);
        jSONObject.put("version", a);
        return jSONObject;
    }

    protected String a(JSONObject jSONObject) {
        return Base64.encodeToString(jSONObject.toString().getBytes(ConfigurationConstant.a), 0);
    }

    private class ContextDataJsonKeys {
        private static final String b = "contextData";
        private static final String c = "username";
        private static final String d = "userPoolId";
        private static final String e = "timestamp";
        private static final String f = "payload";
        private static final String g = "version";
        private static final String h = "signature";

        private ContextDataJsonKeys() {
        }
    }
}
