package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.RiskExceptionConfigurationType;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class RiskExceptionConfigurationTypeJsonMarshaller {
    private static RiskExceptionConfigurationTypeJsonMarshaller a;

    RiskExceptionConfigurationTypeJsonMarshaller() {
    }

    public void a(RiskExceptionConfigurationType riskExceptionConfigurationType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (riskExceptionConfigurationType.a() != null) {
            List<String> listA = riskExceptionConfigurationType.a();
            awsJsonWriter.a("BlockedIPRangeList");
            awsJsonWriter.a();
            for (String str : listA) {
                if (str != null) {
                    awsJsonWriter.b(str);
                }
            }
            awsJsonWriter.b();
        }
        if (riskExceptionConfigurationType.b() != null) {
            List<String> listB = riskExceptionConfigurationType.b();
            awsJsonWriter.a("SkippedIPRangeList");
            awsJsonWriter.a();
            for (String str2 : listB) {
                if (str2 != null) {
                    awsJsonWriter.b(str2);
                }
            }
            awsJsonWriter.b();
        }
        awsJsonWriter.d();
    }

    public static RiskExceptionConfigurationTypeJsonMarshaller a() {
        if (a == null) {
            a = new RiskExceptionConfigurationTypeJsonMarshaller();
        }
        return a;
    }
}
