package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.Credentials;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
class CredentialsJsonMarshaller {
    private static CredentialsJsonMarshaller a;

    CredentialsJsonMarshaller() {
    }

    public void a(Credentials credentials, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (credentials.a() != null) {
            String strA = credentials.a();
            awsJsonWriter.a("AccessKeyId");
            awsJsonWriter.b(strA);
        }
        if (credentials.b() != null) {
            String strB = credentials.b();
            awsJsonWriter.a("SecretKey");
            awsJsonWriter.b(strB);
        }
        if (credentials.c() != null) {
            String strC = credentials.c();
            awsJsonWriter.a("SessionToken");
            awsJsonWriter.b(strC);
        }
        if (credentials.d() != null) {
            Date dateD = credentials.d();
            awsJsonWriter.a("Expiration");
            awsJsonWriter.a(dateD);
        }
        awsJsonWriter.d();
    }

    public static CredentialsJsonMarshaller a() {
        if (a == null) {
            a = new CredentialsJsonMarshaller();
        }
        return a;
    }
}
