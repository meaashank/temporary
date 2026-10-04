package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.IdentityDescription;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class IdentityDescriptionJsonMarshaller {
    private static IdentityDescriptionJsonMarshaller a;

    IdentityDescriptionJsonMarshaller() {
    }

    public void a(IdentityDescription identityDescription, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (identityDescription.a() != null) {
            String strA = identityDescription.a();
            awsJsonWriter.a("IdentityId");
            awsJsonWriter.b(strA);
        }
        if (identityDescription.b() != null) {
            List<String> listB = identityDescription.b();
            awsJsonWriter.a("Logins");
            awsJsonWriter.a();
            for (String str : listB) {
                if (str != null) {
                    awsJsonWriter.b(str);
                }
            }
            awsJsonWriter.b();
        }
        if (identityDescription.c() != null) {
            Date dateC = identityDescription.c();
            awsJsonWriter.a("CreationDate");
            awsJsonWriter.a(dateC);
        }
        if (identityDescription.d() != null) {
            Date dateD = identityDescription.d();
            awsJsonWriter.a("LastModifiedDate");
            awsJsonWriter.a(dateD);
        }
        awsJsonWriter.d();
    }

    public static IdentityDescriptionJsonMarshaller a() {
        if (a == null) {
            a = new IdentityDescriptionJsonMarshaller();
        }
        return a;
    }
}
