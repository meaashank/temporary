package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ProviderDescription;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
class ProviderDescriptionJsonMarshaller {
    private static ProviderDescriptionJsonMarshaller a;

    ProviderDescriptionJsonMarshaller() {
    }

    public void a(ProviderDescription providerDescription, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (providerDescription.a() != null) {
            String strA = providerDescription.a();
            awsJsonWriter.a("ProviderName");
            awsJsonWriter.b(strA);
        }
        if (providerDescription.b() != null) {
            String strB = providerDescription.b();
            awsJsonWriter.a("ProviderType");
            awsJsonWriter.b(strB);
        }
        if (providerDescription.c() != null) {
            Date dateC = providerDescription.c();
            awsJsonWriter.a("LastModifiedDate");
            awsJsonWriter.a(dateC);
        }
        if (providerDescription.d() != null) {
            Date dateD = providerDescription.d();
            awsJsonWriter.a("CreationDate");
            awsJsonWriter.a(dateD);
        }
        awsJsonWriter.d();
    }

    public static ProviderDescriptionJsonMarshaller a() {
        if (a == null) {
            a = new ProviderDescriptionJsonMarshaller();
        }
        return a;
    }
}
