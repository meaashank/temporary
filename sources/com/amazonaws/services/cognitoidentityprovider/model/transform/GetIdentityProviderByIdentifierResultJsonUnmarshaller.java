package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.GetIdentityProviderByIdentifierResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class GetIdentityProviderByIdentifierResultJsonUnmarshaller implements Unmarshaller<GetIdentityProviderByIdentifierResult, JsonUnmarshallerContext> {
    private static GetIdentityProviderByIdentifierResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public GetIdentityProviderByIdentifierResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        GetIdentityProviderByIdentifierResult getIdentityProviderByIdentifierResult = new GetIdentityProviderByIdentifierResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("IdentityProvider")) {
                getIdentityProviderByIdentifierResult.a(IdentityProviderTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return getIdentityProviderByIdentifierResult;
    }

    public static GetIdentityProviderByIdentifierResultJsonUnmarshaller a() {
        if (a == null) {
            a = new GetIdentityProviderByIdentifierResultJsonUnmarshaller();
        }
        return a;
    }
}
