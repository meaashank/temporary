package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.RiskConfigurationType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class RiskConfigurationTypeJsonUnmarshaller implements Unmarshaller<RiskConfigurationType, JsonUnmarshallerContext> {
    private static RiskConfigurationTypeJsonUnmarshaller a;

    RiskConfigurationTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public RiskConfigurationType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        RiskConfigurationType riskConfigurationType = new RiskConfigurationType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("UserPoolId")) {
                riskConfigurationType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ClientId")) {
                riskConfigurationType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("CompromisedCredentialsRiskConfiguration")) {
                riskConfigurationType.a(CompromisedCredentialsRiskConfigurationTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("AccountTakeoverRiskConfiguration")) {
                riskConfigurationType.a(AccountTakeoverRiskConfigurationTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("RiskExceptionConfiguration")) {
                riskConfigurationType.a(RiskExceptionConfigurationTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("LastModifiedDate")) {
                riskConfigurationType.a(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return riskConfigurationType;
    }

    public static RiskConfigurationTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new RiskConfigurationTypeJsonUnmarshaller();
        }
        return a;
    }
}
