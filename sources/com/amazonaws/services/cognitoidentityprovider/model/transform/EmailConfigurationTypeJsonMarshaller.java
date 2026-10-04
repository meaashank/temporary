package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.EmailConfigurationType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class EmailConfigurationTypeJsonMarshaller {
    private static EmailConfigurationTypeJsonMarshaller a;

    EmailConfigurationTypeJsonMarshaller() {
    }

    public void a(EmailConfigurationType emailConfigurationType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (emailConfigurationType.a() != null) {
            String strA = emailConfigurationType.a();
            awsJsonWriter.a("SourceArn");
            awsJsonWriter.b(strA);
        }
        if (emailConfigurationType.b() != null) {
            String strB = emailConfigurationType.b();
            awsJsonWriter.a("ReplyToEmailAddress");
            awsJsonWriter.b(strB);
        }
        awsJsonWriter.d();
    }

    public static EmailConfigurationTypeJsonMarshaller a() {
        if (a == null) {
            a = new EmailConfigurationTypeJsonMarshaller();
        }
        return a;
    }
}
