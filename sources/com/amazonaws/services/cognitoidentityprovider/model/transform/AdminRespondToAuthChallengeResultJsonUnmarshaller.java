package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminRespondToAuthChallengeResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.MapUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class AdminRespondToAuthChallengeResultJsonUnmarshaller implements Unmarshaller<AdminRespondToAuthChallengeResult, JsonUnmarshallerContext> {
    private static AdminRespondToAuthChallengeResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminRespondToAuthChallengeResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AdminRespondToAuthChallengeResult adminRespondToAuthChallengeResult = new AdminRespondToAuthChallengeResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("ChallengeName")) {
                adminRespondToAuthChallengeResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Session")) {
                adminRespondToAuthChallengeResult.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ChallengeParameters")) {
                adminRespondToAuthChallengeResult.a(new MapUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("AuthenticationResult")) {
                adminRespondToAuthChallengeResult.a(AuthenticationResultTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return adminRespondToAuthChallengeResult;
    }

    public static AdminRespondToAuthChallengeResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminRespondToAuthChallengeResultJsonUnmarshaller();
        }
        return a;
    }
}
