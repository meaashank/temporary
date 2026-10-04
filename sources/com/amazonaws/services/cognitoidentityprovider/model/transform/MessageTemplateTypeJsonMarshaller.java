package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.MessageTemplateType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class MessageTemplateTypeJsonMarshaller {
    private static MessageTemplateTypeJsonMarshaller a;

    MessageTemplateTypeJsonMarshaller() {
    }

    public void a(MessageTemplateType messageTemplateType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (messageTemplateType.a() != null) {
            String strA = messageTemplateType.a();
            awsJsonWriter.a("SMSMessage");
            awsJsonWriter.b(strA);
        }
        if (messageTemplateType.b() != null) {
            String strB = messageTemplateType.b();
            awsJsonWriter.a("EmailMessage");
            awsJsonWriter.b(strB);
        }
        if (messageTemplateType.c() != null) {
            String strC = messageTemplateType.c();
            awsJsonWriter.a("EmailSubject");
            awsJsonWriter.b(strC);
        }
        awsJsonWriter.d();
    }

    public static MessageTemplateTypeJsonMarshaller a() {
        if (a == null) {
            a = new MessageTemplateTypeJsonMarshaller();
        }
        return a;
    }
}
