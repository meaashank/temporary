package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminConfirmSignUpResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class AdminConfirmSignUpResultJsonUnmarshaller implements Unmarshaller<AdminConfirmSignUpResult, JsonUnmarshallerContext> {
    private static AdminConfirmSignUpResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminConfirmSignUpResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new AdminConfirmSignUpResult();
    }

    public static AdminConfirmSignUpResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminConfirmSignUpResultJsonUnmarshaller();
        }
        return a;
    }
}
