package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.SMSMfaSettingsType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class SMSMfaSettingsTypeJsonMarshaller {
    private static SMSMfaSettingsTypeJsonMarshaller a;

    SMSMfaSettingsTypeJsonMarshaller() {
    }

    public void a(SMSMfaSettingsType sMSMfaSettingsType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (sMSMfaSettingsType.b() != null) {
            Boolean boolB = sMSMfaSettingsType.b();
            awsJsonWriter.a("Enabled");
            awsJsonWriter.a(boolB.booleanValue());
        }
        if (sMSMfaSettingsType.d() != null) {
            Boolean boolD = sMSMfaSettingsType.d();
            awsJsonWriter.a("PreferredMfa");
            awsJsonWriter.a(boolD.booleanValue());
        }
        awsJsonWriter.d();
    }

    public static SMSMfaSettingsTypeJsonMarshaller a() {
        if (a == null) {
            a = new SMSMfaSettingsTypeJsonMarshaller();
        }
        return a;
    }
}
