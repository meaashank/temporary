package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ChallengeResponseType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class ChallengeResponseTypeJsonUnmarshaller implements Unmarshaller<ChallengeResponseType, JsonUnmarshallerContext> {
    private static ChallengeResponseTypeJsonUnmarshaller a;

    ChallengeResponseTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public ChallengeResponseType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        ChallengeResponseType challengeResponseType = new ChallengeResponseType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("ChallengeName")) {
                challengeResponseType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ChallengeResponse")) {
                challengeResponseType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return challengeResponseType;
    }

    public static ChallengeResponseTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new ChallengeResponseTypeJsonUnmarshaller();
        }
        return a;
    }
}
