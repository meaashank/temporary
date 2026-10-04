package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsMetadataType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class AnalyticsMetadataTypeJsonMarshaller {
    private static AnalyticsMetadataTypeJsonMarshaller a;

    AnalyticsMetadataTypeJsonMarshaller() {
    }

    public void a(AnalyticsMetadataType analyticsMetadataType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (analyticsMetadataType.a() != null) {
            String strA = analyticsMetadataType.a();
            awsJsonWriter.a("AnalyticsEndpointId");
            awsJsonWriter.b(strA);
        }
        awsJsonWriter.d();
    }

    public static AnalyticsMetadataTypeJsonMarshaller a() {
        if (a == null) {
            a = new AnalyticsMetadataTypeJsonMarshaller();
        }
        return a;
    }
}
