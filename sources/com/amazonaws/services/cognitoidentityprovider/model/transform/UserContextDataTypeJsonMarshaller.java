package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UserContextDataType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class UserContextDataTypeJsonMarshaller {
    private static UserContextDataTypeJsonMarshaller a;

    UserContextDataTypeJsonMarshaller() {
    }

    public void a(UserContextDataType userContextDataType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (userContextDataType.a() != null) {
            String strA = userContextDataType.a();
            awsJsonWriter.a("EncodedData");
            awsJsonWriter.b(strA);
        }
        awsJsonWriter.d();
    }

    public static UserContextDataTypeJsonMarshaller a() {
        if (a == null) {
            a = new UserContextDataTypeJsonMarshaller();
        }
        return a;
    }
}
