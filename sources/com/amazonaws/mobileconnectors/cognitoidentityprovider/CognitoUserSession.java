package com.amazonaws.mobileconnectors.cognitoidentityprovider;

import com.amazonaws.SDKGlobalConfiguration;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.tokens.CognitoAccessToken;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.tokens.CognitoIdToken;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.tokens.CognitoRefreshToken;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoIdentityProviderClientConfig;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class CognitoUserSession {
    private static final int a = 1000;
    private final CognitoIdToken b;
    private final CognitoAccessToken c;
    private final CognitoRefreshToken d;

    public CognitoUserSession(CognitoIdToken cognitoIdToken, CognitoAccessToken cognitoAccessToken, CognitoRefreshToken cognitoRefreshToken) {
        this.b = cognitoIdToken;
        this.c = cognitoAccessToken;
        this.d = cognitoRefreshToken;
    }

    public CognitoIdToken a() {
        return this.b;
    }

    public CognitoAccessToken b() {
        return this.c;
    }

    public CognitoRefreshToken c() {
        return this.d;
    }

    public boolean d() {
        Date date = new Date();
        try {
            return date.before(this.c.b()) & date.before(this.b.b());
        } catch (Exception unused) {
            return false;
        }
    }

    public boolean e() {
        try {
            return this.b.b().getTime() - (System.currentTimeMillis() - ((long) (SDKGlobalConfiguration.a() * 1000))) > CognitoIdentityProviderClientConfig.a();
        } catch (Exception unused) {
            return false;
        }
    }

    public String f() {
        if (this.c == null) {
            return null;
        }
        try {
            return this.c.c();
        } catch (Exception unused) {
            return null;
        }
    }
}
