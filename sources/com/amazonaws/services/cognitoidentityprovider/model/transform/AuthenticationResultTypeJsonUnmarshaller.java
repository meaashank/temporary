package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AuthenticationResultType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class AuthenticationResultTypeJsonUnmarshaller implements Unmarshaller<AuthenticationResultType, JsonUnmarshallerContext> {
    private static AuthenticationResultTypeJsonUnmarshaller a;

    AuthenticationResultTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public AuthenticationResultType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        AuthenticationResultType authenticationResultType = new AuthenticationResultType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("AccessToken")) {
                authenticationResultType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ExpiresIn")) {
                authenticationResultType.a(SimpleTypeJsonUnmarshallers.IntegerJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("TokenType")) {
                authenticationResultType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("RefreshToken")) {
                authenticationResultType.e(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("IdToken")) {
                authenticationResultType.g(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("NewDeviceMetadata")) {
                authenticationResultType.a(NewDeviceMetadataTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return authenticationResultType;
    }

    public static AuthenticationResultTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new AuthenticationResultTypeJsonUnmarshaller();
        }
        return a;
    }
}
