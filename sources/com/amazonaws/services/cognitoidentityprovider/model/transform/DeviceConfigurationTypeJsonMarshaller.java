package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.DeviceConfigurationType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class DeviceConfigurationTypeJsonMarshaller {
    private static DeviceConfigurationTypeJsonMarshaller a;

    DeviceConfigurationTypeJsonMarshaller() {
    }

    public void a(DeviceConfigurationType deviceConfigurationType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (deviceConfigurationType.b() != null) {
            Boolean boolB = deviceConfigurationType.b();
            awsJsonWriter.a("ChallengeRequiredOnNewDevice");
            awsJsonWriter.a(boolB.booleanValue());
        }
        if (deviceConfigurationType.d() != null) {
            Boolean boolD = deviceConfigurationType.d();
            awsJsonWriter.a("DeviceOnlyRememberedOnUserPrompt");
            awsJsonWriter.a(boolD.booleanValue());
        }
        awsJsonWriter.d();
    }

    public static DeviceConfigurationTypeJsonMarshaller a() {
        if (a == null) {
            a = new DeviceConfigurationTypeJsonMarshaller();
        }
        return a;
    }
}
