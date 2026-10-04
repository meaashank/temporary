package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.DeviceSecretVerifierConfigType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class DeviceSecretVerifierConfigTypeJsonUnmarshaller implements Unmarshaller<DeviceSecretVerifierConfigType, JsonUnmarshallerContext> {
    private static DeviceSecretVerifierConfigTypeJsonUnmarshaller a;

    DeviceSecretVerifierConfigTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public DeviceSecretVerifierConfigType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        DeviceSecretVerifierConfigType deviceSecretVerifierConfigType = new DeviceSecretVerifierConfigType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("PasswordVerifier")) {
                deviceSecretVerifierConfigType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Salt")) {
                deviceSecretVerifierConfigType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return deviceSecretVerifierConfigType;
    }

    public static DeviceSecretVerifierConfigTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new DeviceSecretVerifierConfigTypeJsonUnmarshaller();
        }
        return a;
    }
}
