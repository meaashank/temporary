package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UserContextDataType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class UserContextDataTypeJsonUnmarshaller implements Unmarshaller<UserContextDataType, JsonUnmarshallerContext> {
    private static UserContextDataTypeJsonUnmarshaller a;

    UserContextDataTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public UserContextDataType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        UserContextDataType userContextDataType = new UserContextDataType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("EncodedData")) {
                userContextDataType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return userContextDataType;
    }

    public static UserContextDataTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new UserContextDataTypeJsonUnmarshaller();
        }
        return a;
    }
}
