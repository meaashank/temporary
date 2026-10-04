package com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations;

import android.content.Context;
import android.os.Handler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserCodeDeliveryDetails;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.util.CognitoServiceConstants;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeResult;

/* JADX INFO: loaded from: classes.dex */
public class MultiFactorAuthenticationContinuation implements CognitoIdentityProviderContinuation<CognitoUserCodeDeliveryDetails> {
    public static final boolean a = true;
    public static final boolean b = false;
    private final CognitoUser c;
    private final Context d;
    private final RespondToAuthChallengeResult e;
    private final boolean f;
    private final AuthenticationHandler g;
    private String h = null;

    public MultiFactorAuthenticationContinuation(CognitoUser cognitoUser, Context context, RespondToAuthChallengeResult respondToAuthChallengeResult, boolean z, AuthenticationHandler authenticationHandler) {
        this.c = cognitoUser;
        this.d = context;
        this.g = authenticationHandler;
        this.f = z;
        this.e = respondToAuthChallengeResult;
    }

    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.CognitoIdentityProviderContinuation
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public CognitoUserCodeDeliveryDetails c() {
        if (CognitoServiceConstants.h.equals(this.e.a())) {
            return new CognitoUserCodeDeliveryDetails("Time-based One-time Password", this.e.c().get("FRIENDLY_DEVICE_NAME"), null);
        }
        if ("SMS_MFA".equals(this.e.a())) {
            return new CognitoUserCodeDeliveryDetails(this.e.c().get(CognitoServiceConstants.C), this.e.c().get(CognitoServiceConstants.B), null);
        }
        return new CognitoUserCodeDeliveryDetails("", "", "");
    }

    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.CognitoIdentityProviderContinuation
    public void b() {
        Runnable runnableA;
        if (this.f) {
            new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.MultiFactorAuthenticationContinuation.1
                @Override // java.lang.Runnable
                public void run() {
                    Runnable runnableA2;
                    Handler handler = new Handler(MultiFactorAuthenticationContinuation.this.d.getMainLooper());
                    try {
                        runnableA2 = MultiFactorAuthenticationContinuation.this.c.a(MultiFactorAuthenticationContinuation.this.h, MultiFactorAuthenticationContinuation.this.e, MultiFactorAuthenticationContinuation.this.g, true);
                    } catch (Exception e) {
                        runnableA2 = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.MultiFactorAuthenticationContinuation.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MultiFactorAuthenticationContinuation.this.g.a(e);
                            }
                        };
                    }
                    handler.post(runnableA2);
                }
            }).start();
            return;
        }
        try {
            runnableA = this.c.a(this.h, this.e, this.g, false);
        } catch (Exception e) {
            runnableA = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.MultiFactorAuthenticationContinuation.2
                @Override // java.lang.Runnable
                public void run() {
                    MultiFactorAuthenticationContinuation.this.g.a(e);
                }
            };
        }
        runnableA.run();
    }

    public void a(String str) {
        this.h = str;
    }
}
