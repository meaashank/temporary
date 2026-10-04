package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.SmsConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.SmsMfaConfigType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class SmsMfaConfigTypeJsonMarshaller {
    private static SmsMfaConfigTypeJsonMarshaller a;

    SmsMfaConfigTypeJsonMarshaller() {
    }

    public void a(SmsMfaConfigType smsMfaConfigType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (smsMfaConfigType.a() != null) {
            String strA = smsMfaConfigType.a();
            awsJsonWriter.a("SmsAuthenticationMessage");
            awsJsonWriter.b(strA);
        }
        if (smsMfaConfigType.b() != null) {
            SmsConfigurationType smsConfigurationTypeB = smsMfaConfigType.b();
            awsJsonWriter.a("SmsConfiguration");
            SmsConfigurationTypeJsonMarshaller.a().a(smsConfigurationTypeB, awsJsonWriter);
        }
        awsJsonWriter.d();
    }

    public static SmsMfaConfigTypeJsonMarshaller a() {
        if (a == null) {
            a = new SmsMfaConfigTypeJsonMarshaller();
        }
        return a;
    }
}
