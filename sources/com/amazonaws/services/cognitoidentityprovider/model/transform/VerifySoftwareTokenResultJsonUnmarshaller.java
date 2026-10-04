package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.VerifySoftwareTokenResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class VerifySoftwareTokenResultJsonUnmarshaller implements Unmarshaller<VerifySoftwareTokenResult, JsonUnmarshallerContext> {
    private static VerifySoftwareTokenResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public VerifySoftwareTokenResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        VerifySoftwareTokenResult verifySoftwareTokenResult = new VerifySoftwareTokenResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("Status")) {
                verifySoftwareTokenResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Session")) {
                verifySoftwareTokenResult.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return verifySoftwareTokenResult;
    }

    public static VerifySoftwareTokenResultJsonUnmarshaller a() {
        if (a == null) {
            a = new VerifySoftwareTokenResultJsonUnmarshaller();
        }
        return a;
    }
}
