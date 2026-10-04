package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsConfigurationType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class AnalyticsConfigurationTypeJsonMarshaller {
    private static AnalyticsConfigurationTypeJsonMarshaller a;

    AnalyticsConfigurationTypeJsonMarshaller() {
    }

    public void a(AnalyticsConfigurationType analyticsConfigurationType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (analyticsConfigurationType.a() != null) {
            String strA = analyticsConfigurationType.a();
            awsJsonWriter.a("ApplicationId");
            awsJsonWriter.b(strA);
        }
        if (analyticsConfigurationType.b() != null) {
            String strB = analyticsConfigurationType.b();
            awsJsonWriter.a("RoleArn");
            awsJsonWriter.b(strB);
        }
        if (analyticsConfigurationType.c() != null) {
            String strC = analyticsConfigurationType.c();
            awsJsonWriter.a("ExternalId");
            awsJsonWriter.b(strC);
        }
        if (analyticsConfigurationType.e() != null) {
            Boolean boolE = analyticsConfigurationType.e();
            awsJsonWriter.a("UserDataShared");
            awsJsonWriter.a(boolE.booleanValue());
        }
        awsJsonWriter.d();
    }

    public static AnalyticsConfigurationTypeJsonMarshaller a() {
        if (a == null) {
            a = new AnalyticsConfigurationTypeJsonMarshaller();
        }
        return a;
    }
}
