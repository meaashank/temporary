package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AttributeType;
import com.amazonaws.services.cognitoidentityprovider.model.DeviceType;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class DeviceTypeJsonMarshaller {
    private static DeviceTypeJsonMarshaller a;

    DeviceTypeJsonMarshaller() {
    }

    public void a(DeviceType deviceType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (deviceType.a() != null) {
            String strA = deviceType.a();
            awsJsonWriter.a("DeviceKey");
            awsJsonWriter.b(strA);
        }
        if (deviceType.b() != null) {
            List<AttributeType> listB = deviceType.b();
            awsJsonWriter.a("DeviceAttributes");
            awsJsonWriter.a();
            for (AttributeType attributeType : listB) {
                if (attributeType != null) {
                    AttributeTypeJsonMarshaller.a().a(attributeType, awsJsonWriter);
                }
            }
            awsJsonWriter.b();
        }
        if (deviceType.c() != null) {
            Date dateC = deviceType.c();
            awsJsonWriter.a("DeviceCreateDate");
            awsJsonWriter.a(dateC);
        }
        if (deviceType.d() != null) {
            Date dateD = deviceType.d();
            awsJsonWriter.a("DeviceLastModifiedDate");
            awsJsonWriter.a(dateD);
        }
        if (deviceType.e() != null) {
            Date dateE = deviceType.e();
            awsJsonWriter.a("DeviceLastAuthenticatedDate");
            awsJsonWriter.a(dateE);
        }
        awsJsonWriter.d();
    }

    public static DeviceTypeJsonMarshaller a() {
        if (a == null) {
            a = new DeviceTypeJsonMarshaller();
        }
        return a;
    }
}
