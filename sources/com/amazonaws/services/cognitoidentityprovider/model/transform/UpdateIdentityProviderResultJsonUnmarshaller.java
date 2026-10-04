package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UpdateIdentityProviderResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class UpdateIdentityProviderResultJsonUnmarshaller implements Unmarshaller<UpdateIdentityProviderResult, JsonUnmarshallerContext> {
    private static UpdateIdentityProviderResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public UpdateIdentityProviderResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        UpdateIdentityProviderResult updateIdentityProviderResult = new UpdateIdentityProviderResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("IdentityProvider")) {
                updateIdentityProviderResult.a(IdentityProviderTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return updateIdentityProviderResult;
    }

    public static UpdateIdentityProviderResultJsonUnmarshaller a() {
        if (a == null) {
            a = new UpdateIdentityProviderResultJsonUnmarshaller();
        }
        return a;
    }
}
