package com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations;

import android.content.Context;
import android.os.Handler;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers.AuthenticationHandler;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeResult;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ChallengeContinuation implements CognitoIdentityProviderContinuation<Map<String, String>> {
    public static final boolean a = true;
    public static final boolean b = false;
    protected Map<String, String> c = new HashMap();
    private final RespondToAuthChallengeResult d;
    private final Context e;
    private final String f;
    private final String g;
    private final CognitoUser h;
    private final String i;
    private final AuthenticationHandler j;
    private final boolean k;

    public ChallengeContinuation(CognitoUser cognitoUser, Context context, String str, String str2, String str3, RespondToAuthChallengeResult respondToAuthChallengeResult, boolean z, AuthenticationHandler authenticationHandler) {
        this.d = respondToAuthChallengeResult;
        this.e = context;
        this.f = str2;
        this.g = str3;
        this.h = cognitoUser;
        this.i = str;
        this.j = authenticationHandler;
        this.k = z;
    }

    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.CognitoIdentityProviderContinuation
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Map<String, String> c() {
        return this.d.c();
    }

    public String d() {
        return this.d.a();
    }

    public void a(String str, String str2) {
        this.c.put(str, str2);
    }

    @Override // com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.CognitoIdentityProviderContinuation
    public void b() {
        Runnable runnableA;
        final RespondToAuthChallengeRequest respondToAuthChallengeRequest = new RespondToAuthChallengeRequest();
        this.c.put("USERNAME", this.i);
        this.c.put("SECRET_HASH", this.g);
        respondToAuthChallengeRequest.c(this.d.a());
        respondToAuthChallengeRequest.e(this.d.b());
        respondToAuthChallengeRequest.a(this.f);
        respondToAuthChallengeRequest.a(this.c);
        if (this.k) {
            new Thread(new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation.1
                @Override // java.lang.Runnable
                public void run() {
                    Runnable runnableA2;
                    Handler handler = new Handler(ChallengeContinuation.this.e.getMainLooper());
                    try {
                        runnableA2 = ChallengeContinuation.this.h.a(respondToAuthChallengeRequest, ChallengeContinuation.this.j, true);
                    } catch (Exception e) {
                        runnableA2 = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ChallengeContinuation.this.j.a(e);
                            }
                        };
                    }
                    handler.post(runnableA2);
                }
            }).start();
            return;
        }
        try {
            runnableA = this.h.a(respondToAuthChallengeRequest, this.j, false);
        } catch (Exception e) {
            runnableA = new Runnable() { // from class: com.amazonaws.mobileconnectors.cognitoidentityprovider.continuations.ChallengeContinuation.2
                @Override // java.lang.Runnable
                public void run() {
                    ChallengeContinuation.this.j.a(e);
                }
            };
        }
        runnableA.run();
    }

    public void a(String str) {
        this.d.c(str);
    }
}
