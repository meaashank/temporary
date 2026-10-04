package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsMetadataType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class AnalyticsMetadataTypeJsonUnmarshaller implements Unmarshaller<AnalyticsMetadataType, JsonUnmarshallerContext> {
    private static AnalyticsMetadataTypeJsonUnmarshaller a;

    AnalyticsMetadataTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public AnalyticsMetadataType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        AnalyticsMetadataType analyticsMetadataType = new AnalyticsMetadataType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("AnalyticsEndpointId")) {
                analyticsMetadataType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return analyticsMetadataType;
    }

    public static AnalyticsMetadataTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new AnalyticsMetadataTypeJsonUnmarshaller();
        }
        return a;
    }
}
