package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.SetRiskConfigurationResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class SetRiskConfigurationResultJsonUnmarshaller implements Unmarshaller<SetRiskConfigurationResult, JsonUnmarshallerContext> {
    private static SetRiskConfigurationResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public SetRiskConfigurationResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        SetRiskConfigurationResult setRiskConfigurationResult = new SetRiskConfigurationResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("RiskConfiguration")) {
                setRiskConfigurationResult.a(RiskConfigurationTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return setRiskConfigurationResult;
    }

    public static SetRiskConfigurationResultJsonUnmarshaller a() {
        if (a == null) {
            a = new SetRiskConfigurationResultJsonUnmarshaller();
        }
        return a;
    }
}
