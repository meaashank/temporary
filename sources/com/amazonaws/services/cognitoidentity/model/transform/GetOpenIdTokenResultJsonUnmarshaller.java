package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.GetOpenIdTokenResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class GetOpenIdTokenResultJsonUnmarshaller implements Unmarshaller<GetOpenIdTokenResult, JsonUnmarshallerContext> {
    private static GetOpenIdTokenResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public GetOpenIdTokenResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        GetOpenIdTokenResult getOpenIdTokenResult = new GetOpenIdTokenResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("IdentityId")) {
                getOpenIdTokenResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Token")) {
                getOpenIdTokenResult.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return getOpenIdTokenResult;
    }

    public static GetOpenIdTokenResultJsonUnmarshaller a() {
        if (a == null) {
            a = new GetOpenIdTokenResultJsonUnmarshaller();
        }
        return a;
    }
}
