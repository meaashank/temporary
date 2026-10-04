package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ContextDataType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class ContextDataTypeJsonUnmarshaller implements Unmarshaller<ContextDataType, JsonUnmarshallerContext> {
    private static ContextDataTypeJsonUnmarshaller a;

    ContextDataTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public ContextDataType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        ContextDataType contextDataType = new ContextDataType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("IpAddress")) {
                contextDataType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ServerName")) {
                contextDataType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ServerPath")) {
                contextDataType.e(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("HttpHeaders")) {
                contextDataType.a(new ListUnmarshaller(HttpHeaderJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("EncodedData")) {
                contextDataType.g(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return contextDataType;
    }

    public static ContextDataTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new ContextDataTypeJsonUnmarshaller();
        }
        return a;
    }
}
