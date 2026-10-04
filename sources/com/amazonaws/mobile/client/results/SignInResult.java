package com.amazonaws.mobile.client.results;

import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SignInResult {
    public static final SignInResult a = new SignInResult(SignInState.DONE);
    private final SignInState b;
    private final Map<String, String> c;
    private final UserCodeDeliveryDetails d;

    private SignInResult(SignInState signInState) {
        this.b = signInState;
        this.c = null;
        this.d = null;
    }

    public SignInResult(SignInState signInState, Map<String, String> map) {
        this.b = signInState;
        this.c = map;
        this.d = null;
    }

    public SignInResult(SignInState signInState, UserCodeDeliveryDetails userCodeDeliveryDetails) {
        this.b = signInState;
        this.c = null;
        this.d = userCodeDeliveryDetails;
    }

    public SignInState a() {
        return this.b;
    }

    public Map<String, String> b() {
        return this.c;
    }

    public UserCodeDeliveryDetails c() {
        return this.d;
    }
}
