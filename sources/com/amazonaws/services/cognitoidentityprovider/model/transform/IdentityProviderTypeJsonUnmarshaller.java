package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.IdentityProviderType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.MapUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class IdentityProviderTypeJsonUnmarshaller implements Unmarshaller<IdentityProviderType, JsonUnmarshallerContext> {
    private static IdentityProviderTypeJsonUnmarshaller a;

    IdentityProviderTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public IdentityProviderType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        IdentityProviderType identityProviderType = new IdentityProviderType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("UserPoolId")) {
                identityProviderType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ProviderName")) {
                identityProviderType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ProviderType")) {
                identityProviderType.e(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ProviderDetails")) {
                identityProviderType.a(new MapUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("AttributeMapping")) {
                identityProviderType.c(new MapUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("IdpIdentifiers")) {
                identityProviderType.a(new ListUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("LastModifiedDate")) {
                identityProviderType.a(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("CreationDate")) {
                identityProviderType.c(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return identityProviderType;
    }

    public static IdentityProviderTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new IdentityProviderTypeJsonUnmarshaller();
        }
        return a;
    }
}
