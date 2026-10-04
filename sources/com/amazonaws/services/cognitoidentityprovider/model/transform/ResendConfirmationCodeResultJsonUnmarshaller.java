package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ResendConfirmationCodeResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class ResendConfirmationCodeResultJsonUnmarshaller implements Unmarshaller<ResendConfirmationCodeResult, JsonUnmarshallerContext> {
    private static ResendConfirmationCodeResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public ResendConfirmationCodeResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        ResendConfirmationCodeResult resendConfirmationCodeResult = new ResendConfirmationCodeResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("CodeDeliveryDetails")) {
                resendConfirmationCodeResult.a(CodeDeliveryDetailsTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return resendConfirmationCodeResult;
    }

    public static ResendConfirmationCodeResultJsonUnmarshaller a() {
        if (a == null) {
            a = new ResendConfirmationCodeResultJsonUnmarshaller();
        }
        return a;
    }
}
