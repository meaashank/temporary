package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.MapUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class RespondToAuthChallengeResultJsonUnmarshaller implements Unmarshaller<RespondToAuthChallengeResult, JsonUnmarshallerContext> {
    private static RespondToAuthChallengeResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public RespondToAuthChallengeResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        RespondToAuthChallengeResult respondToAuthChallengeResult = new RespondToAuthChallengeResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("ChallengeName")) {
                respondToAuthChallengeResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Session")) {
                respondToAuthChallengeResult.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ChallengeParameters")) {
                respondToAuthChallengeResult.a(new MapUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("AuthenticationResult")) {
                respondToAuthChallengeResult.a(AuthenticationResultTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return respondToAuthChallengeResult;
    }

    public static RespondToAuthChallengeResultJsonUnmarshaller a() {
        if (a == null) {
            a = new RespondToAuthChallengeResultJsonUnmarshaller();
        }
        return a;
    }
}
