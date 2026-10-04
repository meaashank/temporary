package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.SetUserPoolMfaConfigResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class SetUserPoolMfaConfigResultJsonUnmarshaller implements Unmarshaller<SetUserPoolMfaConfigResult, JsonUnmarshallerContext> {
    private static SetUserPoolMfaConfigResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public SetUserPoolMfaConfigResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        SetUserPoolMfaConfigResult setUserPoolMfaConfigResult = new SetUserPoolMfaConfigResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("SmsMfaConfiguration")) {
                setUserPoolMfaConfigResult.a(SmsMfaConfigTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("SoftwareTokenMfaConfiguration")) {
                setUserPoolMfaConfigResult.a(SoftwareTokenMfaConfigTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("MfaConfiguration")) {
                setUserPoolMfaConfigResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return setUserPoolMfaConfigResult;
    }

    public static SetUserPoolMfaConfigResultJsonUnmarshaller a() {
        if (a == null) {
            a = new SetUserPoolMfaConfigResultJsonUnmarshaller();
        }
        return a;
    }
}
