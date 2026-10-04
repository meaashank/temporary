package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.DescribeRiskConfigurationResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class DescribeRiskConfigurationResultJsonUnmarshaller implements Unmarshaller<DescribeRiskConfigurationResult, JsonUnmarshallerContext> {
    private static DescribeRiskConfigurationResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public DescribeRiskConfigurationResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        DescribeRiskConfigurationResult describeRiskConfigurationResult = new DescribeRiskConfigurationResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("RiskConfiguration")) {
                describeRiskConfigurationResult.a(RiskConfigurationTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return describeRiskConfigurationResult;
    }

    public static DescribeRiskConfigurationResultJsonUnmarshaller a() {
        if (a == null) {
            a = new DescribeRiskConfigurationResultJsonUnmarshaller();
        }
        return a;
    }
}
