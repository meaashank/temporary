package com.amazonaws.mobileconnectors.cognitoidentityprovider.handlers;

import com.amazonaws.mobileconnectors.cognitoidentityprovider.CognitoUserCodeDeliveryDetails;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface UpdateAttributesHandler {
    void a(Exception exc);

    void a(List<CognitoUserCodeDeliveryDetails> list);
}
