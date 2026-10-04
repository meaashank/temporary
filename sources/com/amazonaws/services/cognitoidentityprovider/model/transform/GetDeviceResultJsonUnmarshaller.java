package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.GetDeviceResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class GetDeviceResultJsonUnmarshaller implements Unmarshaller<GetDeviceResult, JsonUnmarshallerContext> {
    private static GetDeviceResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public GetDeviceResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        GetDeviceResult getDeviceResult = new GetDeviceResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("Device")) {
                getDeviceResult.a(DeviceTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return getDeviceResult;
    }

    public static GetDeviceResultJsonUnmarshaller a() {
        if (a == null) {
            a = new GetDeviceResultJsonUnmarshaller();
        }
        return a;
    }
}
