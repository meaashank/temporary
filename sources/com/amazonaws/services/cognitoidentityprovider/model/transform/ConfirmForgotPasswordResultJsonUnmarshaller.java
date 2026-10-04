package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ConfirmForgotPasswordResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class ConfirmForgotPasswordResultJsonUnmarshaller implements Unmarshaller<ConfirmForgotPasswordResult, JsonUnmarshallerContext> {
    private static ConfirmForgotPasswordResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public ConfirmForgotPasswordResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new ConfirmForgotPasswordResult();
    }

    public static ConfirmForgotPasswordResultJsonUnmarshaller a() {
        if (a == null) {
            a = new ConfirmForgotPasswordResultJsonUnmarshaller();
        }
        return a;
    }
}
