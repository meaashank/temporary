package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.DeviceConfigurationType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class DeviceConfigurationTypeJsonUnmarshaller implements Unmarshaller<DeviceConfigurationType, JsonUnmarshallerContext> {
    private static DeviceConfigurationTypeJsonUnmarshaller a;

    DeviceConfigurationTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public DeviceConfigurationType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        DeviceConfigurationType deviceConfigurationType = new DeviceConfigurationType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("ChallengeRequiredOnNewDevice")) {
                deviceConfigurationType.a(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("DeviceOnlyRememberedOnUserPrompt")) {
                deviceConfigurationType.c(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return deviceConfigurationType;
    }

    public static DeviceConfigurationTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new DeviceConfigurationTypeJsonUnmarshaller();
        }
        return a;
    }
}
