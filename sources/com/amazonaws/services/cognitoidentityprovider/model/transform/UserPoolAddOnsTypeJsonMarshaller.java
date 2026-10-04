package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UserPoolAddOnsType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class UserPoolAddOnsTypeJsonMarshaller {
    private static UserPoolAddOnsTypeJsonMarshaller a;

    UserPoolAddOnsTypeJsonMarshaller() {
    }

    public void a(UserPoolAddOnsType userPoolAddOnsType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (userPoolAddOnsType.a() != null) {
            String strA = userPoolAddOnsType.a();
            awsJsonWriter.a("AdvancedSecurityMode");
            awsJsonWriter.b(strA);
        }
        awsJsonWriter.d();
    }

    public static UserPoolAddOnsTypeJsonMarshaller a() {
        if (a == null) {
            a = new UserPoolAddOnsTypeJsonMarshaller();
        }
        return a;
    }
}
