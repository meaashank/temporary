package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.DeviceSecretVerifierConfigType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class DeviceSecretVerifierConfigTypeJsonMarshaller {
    private static DeviceSecretVerifierConfigTypeJsonMarshaller a;

    DeviceSecretVerifierConfigTypeJsonMarshaller() {
    }

    public void a(DeviceSecretVerifierConfigType deviceSecretVerifierConfigType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (deviceSecretVerifierConfigType.a() != null) {
            String strA = deviceSecretVerifierConfigType.a();
            awsJsonWriter.a("PasswordVerifier");
            awsJsonWriter.b(strA);
        }
        if (deviceSecretVerifierConfigType.b() != null) {
            String strB = deviceSecretVerifierConfigType.b();
            awsJsonWriter.a("Salt");
            awsJsonWriter.b(strB);
        }
        awsJsonWriter.d();
    }

    public static DeviceSecretVerifierConfigTypeJsonMarshaller a() {
        if (a == null) {
            a = new DeviceSecretVerifierConfigTypeJsonMarshaller();
        }
        return a;
    }
}
