package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminInitiateAuthResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.MapUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class AdminInitiateAuthResultJsonUnmarshaller implements Unmarshaller<AdminInitiateAuthResult, JsonUnmarshallerContext> {
    private static AdminInitiateAuthResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminInitiateAuthResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AdminInitiateAuthResult adminInitiateAuthResult = new AdminInitiateAuthResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("ChallengeName")) {
                adminInitiateAuthResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Session")) {
                adminInitiateAuthResult.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ChallengeParameters")) {
                adminInitiateAuthResult.a(new MapUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("AuthenticationResult")) {
                adminInitiateAuthResult.a(AuthenticationResultTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return adminInitiateAuthResult;
    }

    public static AdminInitiateAuthResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminInitiateAuthResultJsonUnmarshaller();
        }
        return a;
    }
}
