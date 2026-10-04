package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsConfigurationType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class AnalyticsConfigurationTypeJsonUnmarshaller implements Unmarshaller<AnalyticsConfigurationType, JsonUnmarshallerContext> {
    private static AnalyticsConfigurationTypeJsonUnmarshaller a;

    AnalyticsConfigurationTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public AnalyticsConfigurationType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        AnalyticsConfigurationType analyticsConfigurationType = new AnalyticsConfigurationType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("ApplicationId")) {
                analyticsConfigurationType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("RoleArn")) {
                analyticsConfigurationType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ExternalId")) {
                analyticsConfigurationType.e(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("UserDataShared")) {
                analyticsConfigurationType.a(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return analyticsConfigurationType;
    }

    public static AnalyticsConfigurationTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new AnalyticsConfigurationTypeJsonUnmarshaller();
        }
        return a;
    }
}
