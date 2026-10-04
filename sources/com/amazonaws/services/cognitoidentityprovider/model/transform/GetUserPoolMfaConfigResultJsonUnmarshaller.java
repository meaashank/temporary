package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.GetUserPoolMfaConfigResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class GetUserPoolMfaConfigResultJsonUnmarshaller implements Unmarshaller<GetUserPoolMfaConfigResult, JsonUnmarshallerContext> {
    private static GetUserPoolMfaConfigResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public GetUserPoolMfaConfigResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        GetUserPoolMfaConfigResult getUserPoolMfaConfigResult = new GetUserPoolMfaConfigResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("SmsMfaConfiguration")) {
                getUserPoolMfaConfigResult.a(SmsMfaConfigTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("SoftwareTokenMfaConfiguration")) {
                getUserPoolMfaConfigResult.a(SoftwareTokenMfaConfigTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("MfaConfiguration")) {
                getUserPoolMfaConfigResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return getUserPoolMfaConfigResult;
    }

    public static GetUserPoolMfaConfigResultJsonUnmarshaller a() {
        if (a == null) {
            a = new GetUserPoolMfaConfigResultJsonUnmarshaller();
        }
        return a;
    }
}
