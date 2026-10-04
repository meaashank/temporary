package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ProviderUserIdentifierType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class ProviderUserIdentifierTypeJsonMarshaller {
    private static ProviderUserIdentifierTypeJsonMarshaller a;

    ProviderUserIdentifierTypeJsonMarshaller() {
    }

    public void a(ProviderUserIdentifierType providerUserIdentifierType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (providerUserIdentifierType.a() != null) {
            String strA = providerUserIdentifierType.a();
            awsJsonWriter.a("ProviderName");
            awsJsonWriter.b(strA);
        }
        if (providerUserIdentifierType.b() != null) {
            String strB = providerUserIdentifierType.b();
            awsJsonWriter.a("ProviderAttributeName");
            awsJsonWriter.b(strB);
        }
        if (providerUserIdentifierType.c() != null) {
            String strC = providerUserIdentifierType.c();
            awsJsonWriter.a("ProviderAttributeValue");
            awsJsonWriter.b(strC);
        }
        awsJsonWriter.d();
    }

    public static ProviderUserIdentifierTypeJsonMarshaller a() {
        if (a == null) {
            a = new ProviderUserIdentifierTypeJsonMarshaller();
        }
        return a;
    }
}
