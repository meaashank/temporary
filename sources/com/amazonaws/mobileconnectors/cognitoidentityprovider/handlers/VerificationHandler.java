package com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserCodeDeliveryDetails;

/* JADX INFO: loaded from: classes.dex */
public interface VerificationHandler {
    void a(CognitoUserCodeDeliveryDetails cognitoUserCodeDeliveryDetails);

    void a(Exception exc);
}
