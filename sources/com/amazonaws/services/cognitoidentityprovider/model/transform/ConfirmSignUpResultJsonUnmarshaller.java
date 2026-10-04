package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ConfirmSignUpResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class ConfirmSignUpResultJsonUnmarshaller implements Unmarshaller<ConfirmSignUpResult, JsonUnmarshallerContext> {
    private static ConfirmSignUpResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public ConfirmSignUpResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new ConfirmSignUpResult();
    }

    public static ConfirmSignUpResultJsonUnmarshaller a() {
        if (a == null) {
            a = new ConfirmSignUpResultJsonUnmarshaller();
        }
        return a;
    }
}
