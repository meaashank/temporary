package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.GetUserAttributeVerificationCodeResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class GetUserAttributeVerificationCodeResultJsonUnmarshaller implements Unmarshaller<GetUserAttributeVerificationCodeResult, JsonUnmarshallerContext> {
    private static GetUserAttributeVerificationCodeResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public GetUserAttributeVerificationCodeResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        GetUserAttributeVerificationCodeResult getUserAttributeVerificationCodeResult = new GetUserAttributeVerificationCodeResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("CodeDeliveryDetails")) {
                getUserAttributeVerificationCodeResult.a(CodeDeliveryDetailsTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return getUserAttributeVerificationCodeResult;
    }

    public static GetUserAttributeVerificationCodeResultJsonUnmarshaller a() {
        if (a == null) {
            a = new GetUserAttributeVerificationCodeResultJsonUnmarshaller();
        }
        return a;
    }
}
