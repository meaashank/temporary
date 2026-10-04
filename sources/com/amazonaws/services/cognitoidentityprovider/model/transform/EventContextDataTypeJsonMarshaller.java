package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.cognito.clientcontext.datacollection.DataRecordKey;
import com.amazonaws.services.cognitoidentityprovider.model.EventContextDataType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class EventContextDataTypeJsonMarshaller {
    private static EventContextDataTypeJsonMarshaller a;

    EventContextDataTypeJsonMarshaller() {
    }

    public void a(EventContextDataType eventContextDataType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (eventContextDataType.a() != null) {
            String strA = eventContextDataType.a();
            awsJsonWriter.a("IpAddress");
            awsJsonWriter.b(strA);
        }
        if (eventContextDataType.b() != null) {
            String strB = eventContextDataType.b();
            awsJsonWriter.a(DataRecordKey.i);
            awsJsonWriter.b(strB);
        }
        if (eventContextDataType.c() != null) {
            String strC = eventContextDataType.c();
            awsJsonWriter.a("Timezone");
            awsJsonWriter.b(strC);
        }
        if (eventContextDataType.d() != null) {
            String strD = eventContextDataType.d();
            awsJsonWriter.a("City");
            awsJsonWriter.b(strD);
        }
        if (eventContextDataType.e() != null) {
            String strE = eventContextDataType.e();
            awsJsonWriter.a("Country");
            awsJsonWriter.b(strE);
        }
        awsJsonWriter.d();
    }

    public static EventContextDataTypeJsonMarshaller a() {
        if (a == null) {
            a = new EventContextDataTypeJsonMarshaller();
        }
        return a;
    }
}
