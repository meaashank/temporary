package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.PasswordPolicyType;
import com.amazonaws.services.cognitoidentityprovider.model.UserPoolPolicyType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class UserPoolPolicyTypeJsonMarshaller {
    private static UserPoolPolicyTypeJsonMarshaller a;

    UserPoolPolicyTypeJsonMarshaller() {
    }

    public void a(UserPoolPolicyType userPoolPolicyType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (userPoolPolicyType.a() != null) {
            PasswordPolicyType passwordPolicyTypeA = userPoolPolicyType.a();
            awsJsonWriter.a("PasswordPolicy");
            PasswordPolicyTypeJsonMarshaller.a().a(passwordPolicyTypeA, awsJsonWriter);
        }
        awsJsonWriter.d();
    }

    public static UserPoolPolicyTypeJsonMarshaller a() {
        if (a == null) {
            a = new UserPoolPolicyTypeJsonMarshaller();
        }
        return a;
    }
}
