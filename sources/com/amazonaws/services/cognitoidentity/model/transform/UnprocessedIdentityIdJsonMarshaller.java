package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.UnprocessedIdentityId;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class UnprocessedIdentityIdJsonMarshaller {
    private static UnprocessedIdentityIdJsonMarshaller a;

    UnprocessedIdentityIdJsonMarshaller() {
    }

    public void a(UnprocessedIdentityId unprocessedIdentityId, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (unprocessedIdentityId.a() != null) {
            String strA = unprocessedIdentityId.a();
            awsJsonWriter.a("IdentityId");
            awsJsonWriter.b(strA);
        }
        if (unprocessedIdentityId.b() != null) {
            String strB = unprocessedIdentityId.b();
            awsJsonWriter.a("ErrorCode");
            awsJsonWriter.b(strB);
        }
        awsJsonWriter.d();
    }

    public static UnprocessedIdentityIdJsonMarshaller a() {
        if (a == null) {
            a = new UnprocessedIdentityIdJsonMarshaller();
        }
        return a;
    }
}
