package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class GetCredentialsForIdentityResultJsonUnmarshaller implements Unmarshaller<GetCredentialsForIdentityResult, JsonUnmarshallerContext> {
    private static GetCredentialsForIdentityResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public GetCredentialsForIdentityResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        GetCredentialsForIdentityResult getCredentialsForIdentityResult = new GetCredentialsForIdentityResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("IdentityId")) {
                getCredentialsForIdentityResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Credentials")) {
                getCredentialsForIdentityResult.a(CredentialsJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return getCredentialsForIdentityResult;
    }

    public static GetCredentialsForIdentityResultJsonUnmarshaller a() {
        if (a == null) {
            a = new GetCredentialsForIdentityResultJsonUnmarshaller();
        }
        return a;
    }
}
