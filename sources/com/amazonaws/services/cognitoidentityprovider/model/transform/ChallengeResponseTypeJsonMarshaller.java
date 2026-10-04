package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ChallengeResponseType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class ChallengeResponseTypeJsonMarshaller {
    private static ChallengeResponseTypeJsonMarshaller a;

    ChallengeResponseTypeJsonMarshaller() {
    }

    public void a(ChallengeResponseType challengeResponseType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (challengeResponseType.a() != null) {
            String strA = challengeResponseType.a();
            awsJsonWriter.a("ChallengeName");
            awsJsonWriter.b(strA);
        }
        if (challengeResponseType.b() != null) {
            String strB = challengeResponseType.b();
            awsJsonWriter.a("ChallengeResponse");
            awsJsonWriter.b(strB);
        }
        awsJsonWriter.d();
    }

    public static ChallengeResponseTypeJsonMarshaller a() {
        if (a == null) {
            a = new ChallengeResponseTypeJsonMarshaller();
        }
        return a;
    }
}
