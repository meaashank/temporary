package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AuthenticationResultType;
import com.amazonaws.services.cognitoidentityprovider.model.NewDeviceMetadataType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class AuthenticationResultTypeJsonMarshaller {
    private static AuthenticationResultTypeJsonMarshaller a;

    AuthenticationResultTypeJsonMarshaller() {
    }

    public void a(AuthenticationResultType authenticationResultType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (authenticationResultType.a() != null) {
            String strA = authenticationResultType.a();
            awsJsonWriter.a("AccessToken");
            awsJsonWriter.b(strA);
        }
        if (authenticationResultType.b() != null) {
            Integer numB = authenticationResultType.b();
            awsJsonWriter.a("ExpiresIn");
            awsJsonWriter.a(numB);
        }
        if (authenticationResultType.c() != null) {
            String strC = authenticationResultType.c();
            awsJsonWriter.a("TokenType");
            awsJsonWriter.b(strC);
        }
        if (authenticationResultType.d() != null) {
            String strD = authenticationResultType.d();
            awsJsonWriter.a("RefreshToken");
            awsJsonWriter.b(strD);
        }
        if (authenticationResultType.e() != null) {
            String strE = authenticationResultType.e();
            awsJsonWriter.a("IdToken");
            awsJsonWriter.b(strE);
        }
        if (authenticationResultType.f() != null) {
            NewDeviceMetadataType newDeviceMetadataTypeF = authenticationResultType.f();
            awsJsonWriter.a("NewDeviceMetadata");
            NewDeviceMetadataTypeJsonMarshaller.a().a(newDeviceMetadataTypeF, awsJsonWriter);
        }
        awsJsonWriter.d();
    }

    public static AuthenticationResultTypeJsonMarshaller a() {
        if (a == null) {
            a = new AuthenticationResultTypeJsonMarshaller();
        }
        return a;
    }
}
