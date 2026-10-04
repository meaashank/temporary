package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminGetUserResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class AdminGetUserResultJsonUnmarshaller implements Unmarshaller<AdminGetUserResult, JsonUnmarshallerContext> {
    private static AdminGetUserResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminGetUserResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AdminGetUserResult adminGetUserResult = new AdminGetUserResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("Username")) {
                adminGetUserResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("UserAttributes")) {
                adminGetUserResult.a(new ListUnmarshaller(AttributeTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("UserCreateDate")) {
                adminGetUserResult.a(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("UserLastModifiedDate")) {
                adminGetUserResult.c(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Enabled")) {
                adminGetUserResult.a(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("UserStatus")) {
                adminGetUserResult.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("MFAOptions")) {
                adminGetUserResult.c(new ListUnmarshaller(MFAOptionTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("PreferredMfaSetting")) {
                adminGetUserResult.e(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("UserMFASettingList")) {
                adminGetUserResult.e(new ListUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return adminGetUserResult;
    }

    public static AdminGetUserResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminGetUserResultJsonUnmarshaller();
        }
        return a;
    }
}
