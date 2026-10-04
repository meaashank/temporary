package com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUser;
import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserCodeDeliveryDetails;

/* JADX INFO: loaded from: classes.dex */
public interface SignUpHandler {
    void a(CognitoUser cognitoUser, boolean z, CognitoUserCodeDeliveryDetails cognitoUserCodeDeliveryDetails);

    void a(Exception exc);
}
