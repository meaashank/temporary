package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.InitiateAuthResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.MapUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class InitiateAuthResultJsonUnmarshaller implements Unmarshaller<InitiateAuthResult, JsonUnmarshallerContext> {
    private static InitiateAuthResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public InitiateAuthResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        InitiateAuthResult initiateAuthResult = new InitiateAuthResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("ChallengeName")) {
                initiateAuthResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Session")) {
                initiateAuthResult.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ChallengeParameters")) {
                initiateAuthResult.a(new MapUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("AuthenticationResult")) {
                initiateAuthResult.a(AuthenticationResultTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return initiateAuthResult;
    }

    public static InitiateAuthResultJsonUnmarshaller a() {
        if (a == null) {
            a = new InitiateAuthResultJsonUnmarshaller();
        }
        return a;
    }
}
