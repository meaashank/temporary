package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.SoftwareTokenMfaConfigType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class SoftwareTokenMfaConfigTypeJsonMarshaller {
    private static SoftwareTokenMfaConfigTypeJsonMarshaller a;

    SoftwareTokenMfaConfigTypeJsonMarshaller() {
    }

    public void a(SoftwareTokenMfaConfigType softwareTokenMfaConfigType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (softwareTokenMfaConfigType.b() != null) {
            Boolean boolB = softwareTokenMfaConfigType.b();
            awsJsonWriter.a("Enabled");
            awsJsonWriter.a(boolB.booleanValue());
        }
        awsJsonWriter.d();
    }

    public static SoftwareTokenMfaConfigTypeJsonMarshaller a() {
        if (a == null) {
            a = new SoftwareTokenMfaConfigTypeJsonMarshaller();
        }
        return a;
    }
}
