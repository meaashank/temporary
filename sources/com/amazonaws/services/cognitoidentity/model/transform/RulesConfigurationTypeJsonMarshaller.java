package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.MappingRule;
import com.amazonaws.services.cognitoidentity.model.RulesConfigurationType;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class RulesConfigurationTypeJsonMarshaller {
    private static RulesConfigurationTypeJsonMarshaller a;

    RulesConfigurationTypeJsonMarshaller() {
    }

    public void a(RulesConfigurationType rulesConfigurationType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (rulesConfigurationType.a() != null) {
            List<MappingRule> listA = rulesConfigurationType.a();
            awsJsonWriter.a("Rules");
            awsJsonWriter.a();
            for (MappingRule mappingRule : listA) {
                if (mappingRule != null) {
                    MappingRuleJsonMarshaller.a().a(mappingRule, awsJsonWriter);
                }
            }
            awsJsonWriter.b();
        }
        awsJsonWriter.d();
    }

    public static RulesConfigurationTypeJsonMarshaller a() {
        if (a == null) {
            a = new RulesConfigurationTypeJsonMarshaller();
        }
        return a;
    }
}
