package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.RulesConfigurationType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class RulesConfigurationTypeJsonUnmarshaller implements Unmarshaller<RulesConfigurationType, JsonUnmarshallerContext> {
    private static RulesConfigurationTypeJsonUnmarshaller a;

    RulesConfigurationTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public RulesConfigurationType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        RulesConfigurationType rulesConfigurationType = new RulesConfigurationType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("Rules")) {
                rulesConfigurationType.a(new ListUnmarshaller(MappingRuleJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return rulesConfigurationType;
    }

    public static RulesConfigurationTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new RulesConfigurationTypeJsonUnmarshaller();
        }
        return a;
    }
}
