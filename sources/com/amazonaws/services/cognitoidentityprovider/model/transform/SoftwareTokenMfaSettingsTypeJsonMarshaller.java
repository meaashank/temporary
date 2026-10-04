package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.SoftwareTokenMfaSettingsType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class SoftwareTokenMfaSettingsTypeJsonMarshaller {
    private static SoftwareTokenMfaSettingsTypeJsonMarshaller a;

    SoftwareTokenMfaSettingsTypeJsonMarshaller() {
    }

    public void a(SoftwareTokenMfaSettingsType softwareTokenMfaSettingsType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (softwareTokenMfaSettingsType.b() != null) {
            Boolean boolB = softwareTokenMfaSettingsType.b();
            awsJsonWriter.a("Enabled");
            awsJsonWriter.a(boolB.booleanValue());
        }
        if (softwareTokenMfaSettingsType.d() != null) {
            Boolean boolD = softwareTokenMfaSettingsType.d();
            awsJsonWriter.a("PreferredMfa");
            awsJsonWriter.a(boolD.booleanValue());
        }
        awsJsonWriter.d();
    }

    public static SoftwareTokenMfaSettingsTypeJsonMarshaller a() {
        if (a == null) {
            a = new SoftwareTokenMfaSettingsTypeJsonMarshaller();
        }
        return a;
    }
}
