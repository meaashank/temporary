package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.NotifyEmailType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class NotifyEmailTypeJsonMarshaller {
    private static NotifyEmailTypeJsonMarshaller a;

    NotifyEmailTypeJsonMarshaller() {
    }

    public void a(NotifyEmailType notifyEmailType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (notifyEmailType.a() != null) {
            String strA = notifyEmailType.a();
            awsJsonWriter.a("Subject");
            awsJsonWriter.b(strA);
        }
        if (notifyEmailType.b() != null) {
            String strB = notifyEmailType.b();
            awsJsonWriter.a("HtmlBody");
            awsJsonWriter.b(strB);
        }
        if (notifyEmailType.c() != null) {
            String strC = notifyEmailType.c();
            awsJsonWriter.a("TextBody");
            awsJsonWriter.b(strC);
        }
        awsJsonWriter.d();
    }

    public static NotifyEmailTypeJsonMarshaller a() {
        if (a == null) {
            a = new NotifyEmailTypeJsonMarshaller();
        }
        return a;
    }
}
