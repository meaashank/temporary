package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.CognitoIdentityProvider;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class CognitoIdentityProviderJsonMarshaller {
    private static CognitoIdentityProviderJsonMarshaller a;

    CognitoIdentityProviderJsonMarshaller() {
    }

    public void a(CognitoIdentityProvider cognitoIdentityProvider, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (cognitoIdentityProvider.a() != null) {
            String strA = cognitoIdentityProvider.a();
            awsJsonWriter.a("ProviderName");
            awsJsonWriter.b(strA);
        }
        if (cognitoIdentityProvider.b() != null) {
            String strB = cognitoIdentityProvider.b();
            awsJsonWriter.a("ClientId");
            awsJsonWriter.b(strB);
        }
        if (cognitoIdentityProvider.d() != null) {
            Boolean boolD = cognitoIdentityProvider.d();
            awsJsonWriter.a("ServerSideTokenCheck");
            awsJsonWriter.a(boolD.booleanValue());
        }
        awsJsonWriter.d();
    }

    public static CognitoIdentityProviderJsonMarshaller a() {
        if (a == null) {
            a = new CognitoIdentityProviderJsonMarshaller();
        }
        return a;
    }
}
