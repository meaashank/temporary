package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.NewDeviceMetadataType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class NewDeviceMetadataTypeJsonUnmarshaller implements Unmarshaller<NewDeviceMetadataType, JsonUnmarshallerContext> {
    private static NewDeviceMetadataTypeJsonUnmarshaller a;

    NewDeviceMetadataTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public NewDeviceMetadataType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        NewDeviceMetadataType newDeviceMetadataType = new NewDeviceMetadataType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("DeviceKey")) {
                newDeviceMetadataType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("DeviceGroupKey")) {
                newDeviceMetadataType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return newDeviceMetadataType;
    }

    public static NewDeviceMetadataTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new NewDeviceMetadataTypeJsonUnmarshaller();
        }
        return a;
    }
}
