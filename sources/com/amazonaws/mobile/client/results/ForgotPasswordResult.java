package com.amazonaws.mobile.client.results;

/* JADX INFO: loaded from: classes.dex */
public class ForgotPasswordResult {
    private final ForgotPasswordState a;
    private UserCodeDeliveryDetails b;

    public ForgotPasswordResult(ForgotPasswordState forgotPasswordState) {
        this.a = forgotPasswordState;
    }

    public ForgotPasswordState a() {
        return this.a;
    }

    public void a(UserCodeDeliveryDetails userCodeDeliveryDetails) {
        this.b = userCodeDeliveryDetails;
    }

    public UserCodeDeliveryDetails b() {
        return this.b;
    }
}
