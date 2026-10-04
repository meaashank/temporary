package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.SignUpResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class SignUpResultJsonUnmarshaller implements Unmarshaller<SignUpResult, JsonUnmarshallerContext> {
    private static SignUpResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public SignUpResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        SignUpResult signUpResult = new SignUpResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("UserConfirmed")) {
                signUpResult.a(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("CodeDeliveryDetails")) {
                signUpResult.a(CodeDeliveryDetailsTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("UserSub")) {
                signUpResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return signUpResult;
    }

    public static SignUpResultJsonUnmarshaller a() {
        if (a == null) {
            a = new SignUpResultJsonUnmarshaller();
        }
        return a;
    }
}
