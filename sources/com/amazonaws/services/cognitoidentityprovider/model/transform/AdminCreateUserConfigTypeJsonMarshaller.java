package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminCreateUserConfigType;
import com.amazonaws.services.cognitoidentityprovider.model.MessageTemplateType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class AdminCreateUserConfigTypeJsonMarshaller {
    private static AdminCreateUserConfigTypeJsonMarshaller a;

    AdminCreateUserConfigTypeJsonMarshaller() {
    }

    public void a(AdminCreateUserConfigType adminCreateUserConfigType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (adminCreateUserConfigType.b() != null) {
            Boolean boolB = adminCreateUserConfigType.b();
            awsJsonWriter.a("AllowAdminCreateUserOnly");
            awsJsonWriter.a(boolB.booleanValue());
        }
        if (adminCreateUserConfigType.c() != null) {
            Integer numC = adminCreateUserConfigType.c();
            awsJsonWriter.a("UnusedAccountValidityDays");
            awsJsonWriter.a(numC);
        }
        if (adminCreateUserConfigType.d() != null) {
            MessageTemplateType messageTemplateTypeD = adminCreateUserConfigType.d();
            awsJsonWriter.a("InviteMessageTemplate");
            MessageTemplateTypeJsonMarshaller.a().a(messageTemplateTypeD, awsJsonWriter);
        }
        awsJsonWriter.d();
    }

    public static AdminCreateUserConfigTypeJsonMarshaller a() {
        if (a == null) {
            a = new AdminCreateUserConfigTypeJsonMarshaller();
        }
        return a;
    }
}
