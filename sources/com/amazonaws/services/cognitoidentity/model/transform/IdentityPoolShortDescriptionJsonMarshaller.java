package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.IdentityPoolShortDescription;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class IdentityPoolShortDescriptionJsonMarshaller {
    private static IdentityPoolShortDescriptionJsonMarshaller a;

    IdentityPoolShortDescriptionJsonMarshaller() {
    }

    public void a(IdentityPoolShortDescription identityPoolShortDescription, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (identityPoolShortDescription.a() != null) {
            String strA = identityPoolShortDescription.a();
            awsJsonWriter.a("IdentityPoolId");
            awsJsonWriter.b(strA);
        }
        if (identityPoolShortDescription.b() != null) {
            String strB = identityPoolShortDescription.b();
            awsJsonWriter.a("IdentityPoolName");
            awsJsonWriter.b(strB);
        }
        awsJsonWriter.d();
    }

    public static IdentityPoolShortDescriptionJsonMarshaller a() {
        if (a == null) {
            a = new IdentityPoolShortDescriptionJsonMarshaller();
        }
        return a;
    }
}
