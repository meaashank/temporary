package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.CustomDomainConfigType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class CustomDomainConfigTypeJsonMarshaller {
    private static CustomDomainConfigTypeJsonMarshaller a;

    CustomDomainConfigTypeJsonMarshaller() {
    }

    public void a(CustomDomainConfigType customDomainConfigType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (customDomainConfigType.a() != null) {
            String strA = customDomainConfigType.a();
            awsJsonWriter.a("CertificateArn");
            awsJsonWriter.b(strA);
        }
        awsJsonWriter.d();
    }

    public static CustomDomainConfigTypeJsonMarshaller a() {
        if (a == null) {
            a = new CustomDomainConfigTypeJsonMarshaller();
        }
        return a;
    }
}
