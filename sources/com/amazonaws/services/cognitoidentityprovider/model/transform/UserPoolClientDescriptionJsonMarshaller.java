package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UserPoolClientDescription;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class UserPoolClientDescriptionJsonMarshaller {
    private static UserPoolClientDescriptionJsonMarshaller a;

    UserPoolClientDescriptionJsonMarshaller() {
    }

    public void a(UserPoolClientDescription userPoolClientDescription, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (userPoolClientDescription.a() != null) {
            String strA = userPoolClientDescription.a();
            awsJsonWriter.a("ClientId");
            awsJsonWriter.b(strA);
        }
        if (userPoolClientDescription.b() != null) {
            String strB = userPoolClientDescription.b();
            awsJsonWriter.a("UserPoolId");
            awsJsonWriter.b(strB);
        }
        if (userPoolClientDescription.c() != null) {
            String strC = userPoolClientDescription.c();
            awsJsonWriter.a("ClientName");
            awsJsonWriter.b(strC);
        }
        awsJsonWriter.d();
    }

    public static UserPoolClientDescriptionJsonMarshaller a() {
        if (a == null) {
            a = new UserPoolClientDescriptionJsonMarshaller();
        }
        return a;
    }
}
