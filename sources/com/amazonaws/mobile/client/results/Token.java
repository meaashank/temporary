package com.amazonaws.mobile.client.results;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoJWTParser;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class Token {
    public static final int a = 1000;
    private final String b;

    public Token(String str) {
        this.b = str;
    }

    public String a() {
        return this.b;
    }

    public Date b() {
        return a("exp");
    }

    public Date c() {
        return a("nbf");
    }

    public Date d() {
        return a("iat");
    }

    Date a(String str) {
        try {
            String strA = CognitoJWTParser.a(this.b, str);
            if (strA == null) {
                return null;
            }
            return new Date(Long.parseLong(strA) * 1000);
        } catch (Exception e) {
            throw new RuntimeException("Failed to get claim from token", e);
        }
    }

    public String b(String str) {
        return CognitoJWTParser.a(this.b, str);
    }
}
