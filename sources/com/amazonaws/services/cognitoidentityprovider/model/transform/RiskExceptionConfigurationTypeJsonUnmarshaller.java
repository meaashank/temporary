package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.RiskExceptionConfigurationType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class RiskExceptionConfigurationTypeJsonUnmarshaller implements Unmarshaller<RiskExceptionConfigurationType, JsonUnmarshallerContext> {
    private static RiskExceptionConfigurationTypeJsonUnmarshaller a;

    RiskExceptionConfigurationTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public RiskExceptionConfigurationType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        RiskExceptionConfigurationType riskExceptionConfigurationType = new RiskExceptionConfigurationType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("BlockedIPRangeList")) {
                riskExceptionConfigurationType.a(new ListUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("SkippedIPRangeList")) {
                riskExceptionConfigurationType.c(new ListUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return riskExceptionConfigurationType;
    }

    public static RiskExceptionConfigurationTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new RiskExceptionConfigurationTypeJsonUnmarshaller();
        }
        return a;
    }
}
