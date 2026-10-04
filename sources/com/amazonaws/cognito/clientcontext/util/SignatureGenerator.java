package com.amazonaws.cognito.clientcontext.util;

import android.util.Base64;
import android.util.Log;
import com.amazonaws.cognito.clientcontext.data.ConfigurationConstant;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public class SignatureGenerator {
    private static final String a = "HMAC_SHA256_Signature";
    private static final String b = "HmacSHA256";

    public String a(String str, String str2, String str3) {
        try {
            Mac mac = Mac.getInstance(b);
            mac.init(new SecretKeySpec(str2.getBytes(ConfigurationConstant.a), b));
            mac.update(str3.getBytes(ConfigurationConstant.a));
            return Base64.encodeToString(mac.doFinal(str.getBytes(ConfigurationConstant.a)), 0);
        } catch (Exception e) {
            a(e);
            return "";
        }
    }

    private void a(Exception exc) {
        Log.w(a, "Exception while completing context data signature", exc);
    }
}
