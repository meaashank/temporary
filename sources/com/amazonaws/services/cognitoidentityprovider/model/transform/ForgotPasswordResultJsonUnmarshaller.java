package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ForgotPasswordResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class ForgotPasswordResultJsonUnmarshaller implements Unmarshaller<ForgotPasswordResult, JsonUnmarshallerContext> {
    private static ForgotPasswordResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public ForgotPasswordResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        ForgotPasswordResult forgotPasswordResult = new ForgotPasswordResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("CodeDeliveryDetails")) {
                forgotPasswordResult.a(CodeDeliveryDetailsTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return forgotPasswordResult;
    }

    public static ForgotPasswordResultJsonUnmarshaller a() {
        if (a == null) {
            a = new ForgotPasswordResultJsonUnmarshaller();
        }
        return a;
    }
}
