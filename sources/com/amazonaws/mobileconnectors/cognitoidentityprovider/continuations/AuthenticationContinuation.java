package com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations;

import android.content.Context;
import android.os.Handler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler;

/* JADX INFO: loaded from: classes.dex */
public class AuthenticationContinuation implements CognitoIdentityProviderContinuation<String> {
    public static final boolean a = true;
    public static final boolean b = false;
    private final CognitoUser c;
    private final Context d;
    private final AuthenticationHandler e;
    private final boolean f;
    private AuthenticationDetails g = null;

    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.CognitoIdentityProviderContinuation
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public String c() {
        return "AuthenticationDetails";
    }

    public AuthenticationContinuation(CognitoUser cognitoUser, Context context, boolean z, AuthenticationHandler authenticationHandler) {
        this.c = cognitoUser;
        this.d = context;
        this.f = z;
        this.e = authenticationHandler;
    }

    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.CognitoIdentityProviderContinuation
    public void b() {
        Runnable runnableA;
        if (this.f) {
            new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.AuthenticationContinuation.1
                @Override // java.lang.Runnable
                public void run() {
                    Runnable runnableA2;
                    Handler handler = new Handler(AuthenticationContinuation.this.d.getMainLooper());
                    try {
                        runnableA2 = AuthenticationContinuation.this.c.a(AuthenticationContinuation.this.g, AuthenticationContinuation.this.e, true);
                    } catch (Exception e) {
                        runnableA2 = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.AuthenticationContinuation.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                AuthenticationContinuation.this.e.a(e);
                            }
                        };
                    }
                    handler.post(runnableA2);
                }
            }).start();
            return;
        }
        try {
            runnableA = this.c.a(this.g, this.e, false);
        } catch (Exception e) {
            runnableA = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.AuthenticationContinuation.2
                @Override // java.lang.Runnable
                public void run() {
                    AuthenticationContinuation.this.e.a(e);
                }
            };
        }
        runnableA.run();
    }

    public void a(AuthenticationDetails authenticationDetails) {
        this.g = authenticationDetails;
    }
}
