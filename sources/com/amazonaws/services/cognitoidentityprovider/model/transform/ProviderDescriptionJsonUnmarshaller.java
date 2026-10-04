package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ProviderDescription;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class ProviderDescriptionJsonUnmarshaller implements Unmarshaller<ProviderDescription, JsonUnmarshallerContext> {
    private static ProviderDescriptionJsonUnmarshaller a;

    ProviderDescriptionJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public ProviderDescription a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        ProviderDescription providerDescription = new ProviderDescription();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("ProviderName")) {
                providerDescription.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ProviderType")) {
                providerDescription.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("LastModifiedDate")) {
                providerDescription.a(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("CreationDate")) {
                providerDescription.c(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return providerDescription;
    }

    public static ProviderDescriptionJsonUnmarshaller a() {
        if (a == null) {
            a = new ProviderDescriptionJsonUnmarshaller();
        }
        return a;
    }
}
