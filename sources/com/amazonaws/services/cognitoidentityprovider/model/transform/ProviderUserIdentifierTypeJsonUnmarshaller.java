package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ProviderUserIdentifierType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class ProviderUserIdentifierTypeJsonUnmarshaller implements Unmarshaller<ProviderUserIdentifierType, JsonUnmarshallerContext> {
    private static ProviderUserIdentifierTypeJsonUnmarshaller a;

    ProviderUserIdentifierTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public ProviderUserIdentifierType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        ProviderUserIdentifierType providerUserIdentifierType = new ProviderUserIdentifierType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("ProviderName")) {
                providerUserIdentifierType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ProviderAttributeName")) {
                providerUserIdentifierType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ProviderAttributeValue")) {
                providerUserIdentifierType.e(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return providerUserIdentifierType;
    }

    public static ProviderUserIdentifierTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new ProviderUserIdentifierTypeJsonUnmarshaller();
        }
        return a;
    }
}
