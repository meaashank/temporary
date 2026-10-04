package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UserPoolAddOnsType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class UserPoolAddOnsTypeJsonUnmarshaller implements Unmarshaller<UserPoolAddOnsType, JsonUnmarshallerContext> {
    private static UserPoolAddOnsTypeJsonUnmarshaller a;

    UserPoolAddOnsTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public UserPoolAddOnsType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        UserPoolAddOnsType userPoolAddOnsType = new UserPoolAddOnsType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("AdvancedSecurityMode")) {
                userPoolAddOnsType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return userPoolAddOnsType;
    }

    public static UserPoolAddOnsTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new UserPoolAddOnsTypeJsonUnmarshaller();
        }
        return a;
    }
}
