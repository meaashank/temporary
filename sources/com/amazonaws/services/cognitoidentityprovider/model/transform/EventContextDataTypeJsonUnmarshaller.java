package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.cognito.clientcontext.datacollection.DataRecordKey;
import com.amazonaws.services.cognitoidentityprovider.model.EventContextDataType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class EventContextDataTypeJsonUnmarshaller implements Unmarshaller<EventContextDataType, JsonUnmarshallerContext> {
    private static EventContextDataTypeJsonUnmarshaller a;

    EventContextDataTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public EventContextDataType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        EventContextDataType eventContextDataType = new EventContextDataType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("IpAddress")) {
                eventContextDataType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals(DataRecordKey.i)) {
                eventContextDataType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Timezone")) {
                eventContextDataType.e(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("City")) {
                eventContextDataType.g(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Country")) {
                eventContextDataType.i(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return eventContextDataType;
    }

    public static EventContextDataTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new EventContextDataTypeJsonUnmarshaller();
        }
        return a;
    }
}
