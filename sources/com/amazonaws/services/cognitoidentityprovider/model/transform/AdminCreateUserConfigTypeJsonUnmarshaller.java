package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminCreateUserConfigType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class AdminCreateUserConfigTypeJsonUnmarshaller implements Unmarshaller<AdminCreateUserConfigType, JsonUnmarshallerContext> {
    private static AdminCreateUserConfigTypeJsonUnmarshaller a;

    AdminCreateUserConfigTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminCreateUserConfigType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        AdminCreateUserConfigType adminCreateUserConfigType = new AdminCreateUserConfigType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("AllowAdminCreateUserOnly")) {
                adminCreateUserConfigType.a(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("UnusedAccountValidityDays")) {
                adminCreateUserConfigType.a(SimpleTypeJsonUnmarshallers.IntegerJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("InviteMessageTemplate")) {
                adminCreateUserConfigType.a(MessageTemplateTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return adminCreateUserConfigType;
    }

    public static AdminCreateUserConfigTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminCreateUserConfigTypeJsonUnmarshaller();
        }
        return a;
    }
}
