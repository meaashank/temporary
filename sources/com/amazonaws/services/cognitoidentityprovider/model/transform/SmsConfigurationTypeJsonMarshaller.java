package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.SmsConfigurationType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class SmsConfigurationTypeJsonMarshaller {
    private static SmsConfigurationTypeJsonMarshaller a;

    SmsConfigurationTypeJsonMarshaller() {
    }

    public void a(SmsConfigurationType smsConfigurationType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (smsConfigurationType.a() != null) {
            String strA = smsConfigurationType.a();
            awsJsonWriter.a("SnsCallerArn");
            awsJsonWriter.b(strA);
        }
        if (smsConfigurationType.b() != null) {
            String strB = smsConfigurationType.b();
            awsJsonWriter.a("ExternalId");
            awsJsonWriter.b(strB);
        }
        awsJsonWriter.d();
    }

    public static SmsConfigurationTypeJsonMarshaller a() {
        if (a == null) {
            a = new SmsConfigurationTypeJsonMarshaller();
        }
        return a;
    }
}
