package com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations;

import android.content.Context;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.exceptions.CognitoParameterInvalidException;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.RegisterMfaHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoServiceConstants;
import com.amazonaws.util.StringUtils;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class VerifyMfaContinuation implements CognitoIdentityProviderContinuation<Map<String, String>> {
    public static final boolean a = true;
    public static final boolean b = false;
    private final Context c;
    private final String d;
    private final CognitoUser e;
    private final RegisterMfaHandler f;
    private final Map<String, String> g;
    private final boolean h;
    private final String i;
    private final boolean j;
    private String k;
    private String l = CognitoServiceConstants.V;

    public VerifyMfaContinuation(Context context, String str, CognitoUser cognitoUser, RegisterMfaHandler registerMfaHandler, Map<String, String> map, boolean z, String str2, boolean z2) {
        this.c = context;
        this.d = str;
        this.e = cognitoUser;
        this.f = registerMfaHandler;
        this.g = map;
        this.h = z;
        this.i = str2;
        this.j = z2;
    }

    public void a(String str, String str2) {
        if (StringUtils.a((CharSequence) str)) {
            throw new CognitoParameterInvalidException("verification code is invalid");
        }
        this.k = str;
        if (StringUtils.a((CharSequence) str2)) {
            return;
        }
        this.l = str2;
    }

    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.CognitoIdentityProviderContinuation
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Map<String, String> c() {
        return this.g;
    }

    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.CognitoIdentityProviderContinuation
    public void b() {
        if (this.j) {
            if (this.h) {
                this.e.a(this.i, this.k, this.l, this.f);
                return;
            } else {
                this.e.a((String) null, this.k, this.l, this.f);
                return;
            }
        }
        this.e.a((String) null, this.k, this.l, this.f);
    }
}
