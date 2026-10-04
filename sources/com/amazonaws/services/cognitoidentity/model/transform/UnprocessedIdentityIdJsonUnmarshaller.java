package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.UnprocessedIdentityId;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class UnprocessedIdentityIdJsonUnmarshaller implements Unmarshaller<UnprocessedIdentityId, JsonUnmarshallerContext> {
    private static UnprocessedIdentityIdJsonUnmarshaller a;

    UnprocessedIdentityIdJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public UnprocessedIdentityId a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        UnprocessedIdentityId unprocessedIdentityId = new UnprocessedIdentityId();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("IdentityId")) {
                unprocessedIdentityId.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ErrorCode")) {
                unprocessedIdentityId.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return unprocessedIdentityId;
    }

    public static UnprocessedIdentityIdJsonUnmarshaller a() {
        if (a == null) {
            a = new UnprocessedIdentityIdJsonUnmarshaller();
        }
        return a;
    }
}
