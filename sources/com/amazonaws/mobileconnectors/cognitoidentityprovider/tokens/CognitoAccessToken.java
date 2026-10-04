package com.amazonaws.mobileconnectors.cognitoidentityprovider.tokens;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoInternalErrorException;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoJWTParser;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class CognitoAccessToken extends CognitoUserToken {
    private static final int a = 1000;

    public CognitoAccessToken(String str) {
        super(str);
    }

    public String a() {
        return super.a_();
    }

    public Date b() {
        try {
            String strA = CognitoJWTParser.a(super.a_(), "exp");
            if (strA == null) {
                return null;
            }
            return new Date(Long.parseLong(strA) * 1000);
        } catch (Exception e) {
            throw new CognitoInternalErrorException(e.getMessage());
        }
    }

    public String c() {
        return CognitoJWTParser.a(super.a_(), "username");
    }
}
