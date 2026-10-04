package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UserPoolPolicyType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class UserPoolPolicyTypeJsonUnmarshaller implements Unmarshaller<UserPoolPolicyType, JsonUnmarshallerContext> {
    private static UserPoolPolicyTypeJsonUnmarshaller a;

    UserPoolPolicyTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public UserPoolPolicyType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        UserPoolPolicyType userPoolPolicyType = new UserPoolPolicyType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("PasswordPolicy")) {
                userPoolPolicyType.a(PasswordPolicyTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return userPoolPolicyType;
    }

    public static UserPoolPolicyTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new UserPoolPolicyTypeJsonUnmarshaller();
        }
        return a;
    }
}
