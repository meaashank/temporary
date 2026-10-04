package com.amazonaws.mobileconnectors.cognitoidentityprovider.util;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoInternalErrorException;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoParameterInvalidException;
import com.amazonaws.util.Base64;
import com.amazonaws.util.StringUtils;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes.dex */
public final class CognitoSecretHash {
    private static final String a = "HmacSHA256";

    public static String a(String str, String str2, String str3) {
        if (str == null) {
            throw new CognitoParameterInvalidException("user ID cannot be null");
        }
        if (str2 == null) {
            throw new CognitoParameterInvalidException("client ID cannot be null");
        }
        if (StringUtils.a((CharSequence) str3)) {
            return null;
        }
        SecretKeySpec secretKeySpec = new SecretKeySpec(str3.getBytes(StringUtils.a), a);
        try {
            Mac mac = Mac.getInstance(a);
            mac.init(secretKeySpec);
            mac.update(str.getBytes(StringUtils.a));
            return new String(Base64.encode(mac.doFinal(str2.getBytes(StringUtils.a))));
        } catch (Exception unused) {
            throw new CognitoInternalErrorException("errors in HMAC calculation");
        }
    }
}
