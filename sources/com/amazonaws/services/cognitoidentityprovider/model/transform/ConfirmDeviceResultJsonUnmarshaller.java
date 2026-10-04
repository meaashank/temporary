package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ConfirmDeviceResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class ConfirmDeviceResultJsonUnmarshaller implements Unmarshaller<ConfirmDeviceResult, JsonUnmarshallerContext> {
    private static ConfirmDeviceResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public ConfirmDeviceResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        ConfirmDeviceResult confirmDeviceResult = new ConfirmDeviceResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("UserConfirmationNecessary")) {
                confirmDeviceResult.a(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return confirmDeviceResult;
    }

    public static ConfirmDeviceResultJsonUnmarshaller a() {
        if (a == null) {
            a = new ConfirmDeviceResultJsonUnmarshaller();
        }
        return a;
    }
}
