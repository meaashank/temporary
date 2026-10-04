package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AccountTakeoverRiskConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.CompromisedCredentialsRiskConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.RiskConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.RiskExceptionConfigurationType;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
class RiskConfigurationTypeJsonMarshaller {
    private static RiskConfigurationTypeJsonMarshaller a;

    RiskConfigurationTypeJsonMarshaller() {
    }

    public void a(RiskConfigurationType riskConfigurationType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (riskConfigurationType.a() != null) {
            String strA = riskConfigurationType.a();
            awsJsonWriter.a("UserPoolId");
            awsJsonWriter.b(strA);
        }
        if (riskConfigurationType.b() != null) {
            String strB = riskConfigurationType.b();
            awsJsonWriter.a("ClientId");
            awsJsonWriter.b(strB);
        }
        if (riskConfigurationType.c() != null) {
            CompromisedCredentialsRiskConfigurationType compromisedCredentialsRiskConfigurationTypeC = riskConfigurationType.c();
            awsJsonWriter.a("CompromisedCredentialsRiskConfiguration");
            CompromisedCredentialsRiskConfigurationTypeJsonMarshaller.a().a(compromisedCredentialsRiskConfigurationTypeC, awsJsonWriter);
        }
        if (riskConfigurationType.d() != null) {
            AccountTakeoverRiskConfigurationType accountTakeoverRiskConfigurationTypeD = riskConfigurationType.d();
            awsJsonWriter.a("AccountTakeoverRiskConfiguration");
            AccountTakeoverRiskConfigurationTypeJsonMarshaller.a().a(accountTakeoverRiskConfigurationTypeD, awsJsonWriter);
        }
        if (riskConfigurationType.e() != null) {
            RiskExceptionConfigurationType riskExceptionConfigurationTypeE = riskConfigurationType.e();
            awsJsonWriter.a("RiskExceptionConfiguration");
            RiskExceptionConfigurationTypeJsonMarshaller.a().a(riskExceptionConfigurationTypeE, awsJsonWriter);
        }
        if (riskConfigurationType.f() != null) {
            Date dateF = riskConfigurationType.f();
            awsJsonWriter.a("LastModifiedDate");
            awsJsonWriter.a(dateF);
        }
        awsJsonWriter.d();
    }

    public static RiskConfigurationTypeJsonMarshaller a() {
        if (a == null) {
            a = new RiskConfigurationTypeJsonMarshaller();
        }
        return a;
    }
}
