package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.CognitoIdentityProvider;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class CognitoIdentityProviderJsonUnmarshaller implements Unmarshaller<CognitoIdentityProvider, JsonUnmarshallerContext> {
    private static CognitoIdentityProviderJsonUnmarshaller a;

    CognitoIdentityProviderJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public CognitoIdentityProvider a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        CognitoIdentityProvider cognitoIdentityProvider = new CognitoIdentityProvider();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("ProviderName")) {
                cognitoIdentityProvider.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ClientId")) {
                cognitoIdentityProvider.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ServerSideTokenCheck")) {
                cognitoIdentityProvider.a(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return cognitoIdentityProvider;
    }

    public static CognitoIdentityProviderJsonUnmarshaller a() {
        if (a == null) {
            a = new CognitoIdentityProviderJsonUnmarshaller();
        }
        return a;
    }
}
