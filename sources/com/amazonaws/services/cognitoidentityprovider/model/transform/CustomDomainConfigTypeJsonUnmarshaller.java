package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.CustomDomainConfigType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class CustomDomainConfigTypeJsonUnmarshaller implements Unmarshaller<CustomDomainConfigType, JsonUnmarshallerContext> {
    private static CustomDomainConfigTypeJsonUnmarshaller a;

    CustomDomainConfigTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public CustomDomainConfigType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        CustomDomainConfigType customDomainConfigType = new CustomDomainConfigType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("CertificateArn")) {
                customDomainConfigType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return customDomainConfigType;
    }

    public static CustomDomainConfigTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new CustomDomainConfigTypeJsonUnmarshaller();
        }
        return a;
    }
}
