package com.amazonaws.mobile.client.results;

/* JADX INFO: loaded from: classes.dex */
public class SignUpResult {
    private final boolean a;
    private final UserCodeDeliveryDetails b;

    public SignUpResult(boolean z, UserCodeDeliveryDetails userCodeDeliveryDetails) {
        this.a = z;
        this.b = userCodeDeliveryDetails;
    }

    public boolean a() {
        return this.a;
    }

    public UserCodeDeliveryDetails b() {
        return this.b;
    }
}
