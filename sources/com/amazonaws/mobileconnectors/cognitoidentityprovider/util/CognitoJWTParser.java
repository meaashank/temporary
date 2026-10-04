package com.amazonaws.mobileconnectors.cognitoidentityprovider.util;

import android.util.Base64;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoParameterInvalidException;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public class CognitoJWTParser {
    private static final int a = 0;
    private static final int b = 1;
    private static final int c = 2;
    private static final int d = 3;

    public static JSONObject a(String str) {
        try {
            d(str);
            return new JSONObject(new String(Base64.decode(str.split("\\.")[0], 8), "UTF-8"));
        } catch (UnsupportedEncodingException e) {
            throw new CognitoParameterInvalidException(e.getMessage());
        } catch (JSONException e2) {
            throw new CognitoParameterInvalidException(e2.getMessage());
        } catch (Exception unused) {
            throw new CognitoParameterInvalidException("error in parsing JSON");
        }
    }

    public static JSONObject b(String str) {
        try {
            d(str);
            return new JSONObject(new String(Base64.decode(str.split("\\.")[1], 8), "UTF-8"));
        } catch (UnsupportedEncodingException e) {
            throw new CognitoParameterInvalidException(e.getMessage());
        } catch (JSONException e2) {
            throw new CognitoParameterInvalidException(e2.getMessage());
        } catch (Exception unused) {
            throw new CognitoParameterInvalidException("error in parsing JSON");
        }
    }

    public static String c(String str) {
        try {
            d(str);
            return new String(Base64.decode(str.split("\\.")[2], 8), "UTF-8");
        } catch (Exception unused) {
            throw new CognitoParameterInvalidException("error in parsing JSON");
        }
    }

    public static String a(String str, String str2) {
        try {
            Object obj = b(str).get(str2);
            if (obj != null) {
                return obj.toString();
            }
            return null;
        } catch (Exception unused) {
            throw new CognitoParameterInvalidException("invalid token");
        }
    }

    public static void d(String str) {
        if (str.split("\\.").length != 3) {
            throw new CognitoParameterInvalidException("not a JSON Web Token");
        }
    }
}
