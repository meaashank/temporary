package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AssociateSoftwareTokenResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class AssociateSoftwareTokenResultJsonUnmarshaller implements Unmarshaller<AssociateSoftwareTokenResult, JsonUnmarshallerContext> {
    private static AssociateSoftwareTokenResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AssociateSoftwareTokenResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AssociateSoftwareTokenResult associateSoftwareTokenResult = new AssociateSoftwareTokenResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("SecretCode")) {
                associateSoftwareTokenResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Session")) {
                associateSoftwareTokenResult.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return associateSoftwareTokenResult;
    }

    public static AssociateSoftwareTokenResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AssociateSoftwareTokenResultJsonUnmarshaller();
        }
        return a;
    }
}
