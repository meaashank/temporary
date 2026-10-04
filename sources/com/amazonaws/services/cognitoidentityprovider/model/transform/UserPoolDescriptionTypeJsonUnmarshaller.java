package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.auth.policy.internal.JsonDocumentFields;
import com.amazonaws.services.cognitoidentityprovider.model.UserPoolDescriptionType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
import org.apache.xerces.impl.xs.SchemaSymbols;

/* JADX INFO: loaded from: classes.dex */
class UserPoolDescriptionTypeJsonUnmarshaller implements Unmarshaller<UserPoolDescriptionType, JsonUnmarshallerContext> {
    private static UserPoolDescriptionTypeJsonUnmarshaller a;

    UserPoolDescriptionTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public UserPoolDescriptionType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        UserPoolDescriptionType userPoolDescriptionType = new UserPoolDescriptionType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals(JsonDocumentFields.b)) {
                userPoolDescriptionType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals(SchemaSymbols.ATTVAL_NAME)) {
                userPoolDescriptionType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("LambdaConfig")) {
                userPoolDescriptionType.a(LambdaConfigTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Status")) {
                userPoolDescriptionType.e(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("LastModifiedDate")) {
                userPoolDescriptionType.a(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("CreationDate")) {
                userPoolDescriptionType.c(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return userPoolDescriptionType;
    }

    public static UserPoolDescriptionTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new UserPoolDescriptionTypeJsonUnmarshaller();
        }
        return a;
    }
}
