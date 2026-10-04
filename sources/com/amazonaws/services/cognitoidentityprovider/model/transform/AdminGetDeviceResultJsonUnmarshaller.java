package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminGetDeviceResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class AdminGetDeviceResultJsonUnmarshaller implements Unmarshaller<AdminGetDeviceResult, JsonUnmarshallerContext> {
    private static AdminGetDeviceResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminGetDeviceResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AdminGetDeviceResult adminGetDeviceResult = new AdminGetDeviceResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("Device")) {
                adminGetDeviceResult.a(DeviceTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return adminGetDeviceResult;
    }

    public static AdminGetDeviceResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminGetDeviceResultJsonUnmarshaller();
        }
        return a;
    }
}
