package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UserType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class UserTypeJsonUnmarshaller implements Unmarshaller<UserType, JsonUnmarshallerContext> {
    private static UserTypeJsonUnmarshaller a;

    UserTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public UserType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        UserType userType = new UserType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("Username")) {
                userType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Attributes")) {
                userType.a(new ListUnmarshaller(AttributeTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("UserCreateDate")) {
                userType.a(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("UserLastModifiedDate")) {
                userType.c(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Enabled")) {
                userType.a(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("UserStatus")) {
                userType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("MFAOptions")) {
                userType.c(new ListUnmarshaller(MFAOptionTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return userType;
    }

    public static UserTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new UserTypeJsonUnmarshaller();
        }
        return a;
    }
}
