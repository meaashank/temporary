package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.NewDeviceMetadataType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class NewDeviceMetadataTypeJsonMarshaller {
    private static NewDeviceMetadataTypeJsonMarshaller a;

    NewDeviceMetadataTypeJsonMarshaller() {
    }

    public void a(NewDeviceMetadataType newDeviceMetadataType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (newDeviceMetadataType.a() != null) {
            String strA = newDeviceMetadataType.a();
            awsJsonWriter.a("DeviceKey");
            awsJsonWriter.b(strA);
        }
        if (newDeviceMetadataType.b() != null) {
            String strB = newDeviceMetadataType.b();
            awsJsonWriter.a("DeviceGroupKey");
            awsJsonWriter.b(strB);
        }
        awsJsonWriter.d();
    }

    public static NewDeviceMetadataTypeJsonMarshaller a() {
        if (a == null) {
            a = new NewDeviceMetadataTypeJsonMarshaller();
        }
        return a;
    }
}
