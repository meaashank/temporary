package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.NotifyConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.NotifyEmailType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class NotifyConfigurationTypeJsonMarshaller {
    private static NotifyConfigurationTypeJsonMarshaller a;

    NotifyConfigurationTypeJsonMarshaller() {
    }

    public void a(NotifyConfigurationType notifyConfigurationType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (notifyConfigurationType.a() != null) {
            String strA = notifyConfigurationType.a();
            awsJsonWriter.a("From");
            awsJsonWriter.b(strA);
        }
        if (notifyConfigurationType.b() != null) {
            String strB = notifyConfigurationType.b();
            awsJsonWriter.a("ReplyTo");
            awsJsonWriter.b(strB);
        }
        if (notifyConfigurationType.c() != null) {
            String strC = notifyConfigurationType.c();
            awsJsonWriter.a("SourceArn");
            awsJsonWriter.b(strC);
        }
        if (notifyConfigurationType.d() != null) {
            NotifyEmailType notifyEmailTypeD = notifyConfigurationType.d();
            awsJsonWriter.a("BlockEmail");
            NotifyEmailTypeJsonMarshaller.a().a(notifyEmailTypeD, awsJsonWriter);
        }
        if (notifyConfigurationType.e() != null) {
            NotifyEmailType notifyEmailTypeE = notifyConfigurationType.e();
            awsJsonWriter.a("NoActionEmail");
            NotifyEmailTypeJsonMarshaller.a().a(notifyEmailTypeE, awsJsonWriter);
        }
        if (notifyConfigurationType.f() != null) {
            NotifyEmailType notifyEmailTypeF = notifyConfigurationType.f();
            awsJsonWriter.a("MfaEmail");
            NotifyEmailTypeJsonMarshaller.a().a(notifyEmailTypeF, awsJsonWriter);
        }
        awsJsonWriter.d();
    }

    public static NotifyConfigurationTypeJsonMarshaller a() {
        if (a == null) {
            a = new NotifyConfigurationTypeJsonMarshaller();
        }
        return a;
    }
}
