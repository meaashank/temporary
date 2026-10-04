package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.EventRiskType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class EventRiskTypeJsonMarshaller {
    private static EventRiskTypeJsonMarshaller a;

    EventRiskTypeJsonMarshaller() {
    }

    public void a(EventRiskType eventRiskType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (eventRiskType.a() != null) {
            String strA = eventRiskType.a();
            awsJsonWriter.a("RiskDecision");
            awsJsonWriter.b(strA);
        }
        if (eventRiskType.b() != null) {
            String strB = eventRiskType.b();
            awsJsonWriter.a("RiskLevel");
            awsJsonWriter.b(strB);
        }
        awsJsonWriter.d();
    }

    public static EventRiskTypeJsonMarshaller a() {
        if (a == null) {
            a = new EventRiskTypeJsonMarshaller();
        }
        return a;
    }
}
