package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.DeviceType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class DeviceTypeJsonUnmarshaller implements Unmarshaller<DeviceType, JsonUnmarshallerContext> {
    private static DeviceTypeJsonUnmarshaller a;

    DeviceTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public DeviceType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        DeviceType deviceType = new DeviceType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("DeviceKey")) {
                deviceType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("DeviceAttributes")) {
                deviceType.a(new ListUnmarshaller(AttributeTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("DeviceCreateDate")) {
                deviceType.a(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("DeviceLastModifiedDate")) {
                deviceType.c(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("DeviceLastAuthenticatedDate")) {
                deviceType.e(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return deviceType;
    }

    public static DeviceTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new DeviceTypeJsonUnmarshaller();
        }
        return a;
    }
}
