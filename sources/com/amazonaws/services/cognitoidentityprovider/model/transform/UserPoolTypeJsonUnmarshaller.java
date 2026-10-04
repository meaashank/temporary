package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.cognitoidentityprovider.model.UserPoolType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.MapUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
import org.apache.xerces.impl.xs.SchemaSymbols;

/* JADX INFO: loaded from: classes.dex */
class UserPoolTypeJsonUnmarshaller implements Unmarshaller<UserPoolType, JsonUnmarshallerContext> {
    private static UserPoolTypeJsonUnmarshaller a;

    UserPoolTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public UserPoolType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        UserPoolType userPoolType = new UserPoolType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals(JsonDocumentFields.b)) {
                userPoolType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals(SchemaSymbols.ATTVAL_NAME)) {
                userPoolType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Policies")) {
                userPoolType.a(UserPoolPolicyTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("LambdaConfig")) {
                userPoolType.a(LambdaConfigTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Status")) {
                userPoolType.e(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("LastModifiedDate")) {
                userPoolType.a(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("CreationDate")) {
                userPoolType.c(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("SchemaAttributes")) {
                userPoolType.a(new ListUnmarshaller(SchemaAttributeTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("AutoVerifiedAttributes")) {
                userPoolType.c(new ListUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("AliasAttributes")) {
                userPoolType.e(new ListUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("UsernameAttributes")) {
                userPoolType.g(new ListUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("SmsVerificationMessage")) {
                userPoolType.g(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("EmailVerificationMessage")) {
                userPoolType.i(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("EmailVerificationSubject")) {
                userPoolType.k(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("VerificationMessageTemplate")) {
                userPoolType.a(VerificationMessageTemplateTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("SmsAuthenticationMessage")) {
                userPoolType.m(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("MfaConfiguration")) {
                userPoolType.o(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("DeviceConfiguration")) {
                userPoolType.a(DeviceConfigurationTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("EstimatedNumberOfUsers")) {
                userPoolType.a(SimpleTypeJsonUnmarshallers.IntegerJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("EmailConfiguration")) {
                userPoolType.a(EmailConfigurationTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("SmsConfiguration")) {
                userPoolType.a(SmsConfigurationTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("UserPoolTags")) {
                userPoolType.a(new MapUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("SmsConfigurationFailure")) {
                userPoolType.q(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("EmailConfigurationFailure")) {
                userPoolType.s(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Domain")) {
                userPoolType.u(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("CustomDomain")) {
                userPoolType.w(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("AdminCreateUserConfig")) {
                userPoolType.a(AdminCreateUserConfigTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("UserPoolAddOns")) {
                userPoolType.a(UserPoolAddOnsTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Arn")) {
                userPoolType.y(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return userPoolType;
    }

    public static UserPoolTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new UserPoolTypeJsonUnmarshaller();
        }
        return a;
    }
}
