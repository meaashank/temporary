package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.CreateIdentityProviderResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class CreateIdentityProviderResultJsonUnmarshaller implements Unmarshaller<CreateIdentityProviderResult, JsonUnmarshallerContext> {
    private static CreateIdentityProviderResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public CreateIdentityProviderResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        CreateIdentityProviderResult createIdentityProviderResult = new CreateIdentityProviderResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("IdentityProvider")) {
                createIdentityProviderResult.a(IdentityProviderTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return createIdentityProviderResult;
    }

    public static CreateIdentityProviderResultJsonUnmarshaller a() {
        if (a == null) {
            a = new CreateIdentityProviderResultJsonUnmarshaller();
        }
        return a;
    }
}
