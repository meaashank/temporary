package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.GetOpenIdTokenForDeveloperIdentityResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller implements Unmarshaller<GetOpenIdTokenForDeveloperIdentityResult, JsonUnmarshallerContext> {
    private static GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public GetOpenIdTokenForDeveloperIdentityResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        GetOpenIdTokenForDeveloperIdentityResult getOpenIdTokenForDeveloperIdentityResult = new GetOpenIdTokenForDeveloperIdentityResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("IdentityId")) {
                getOpenIdTokenForDeveloperIdentityResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Token")) {
                getOpenIdTokenForDeveloperIdentityResult.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return getOpenIdTokenForDeveloperIdentityResult;
    }

    public static GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller a() {
        if (a == null) {
            a = new GetOpenIdTokenForDeveloperIdentityResultJsonUnmarshaller();
        }
        return a;
    }
}
