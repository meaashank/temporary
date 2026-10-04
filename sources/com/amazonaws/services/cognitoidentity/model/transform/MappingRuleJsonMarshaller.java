package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.MappingRule;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class MappingRuleJsonMarshaller {
    private static MappingRuleJsonMarshaller a;

    MappingRuleJsonMarshaller() {
    }

    public void a(MappingRule mappingRule, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (mappingRule.a() != null) {
            String strA = mappingRule.a();
            awsJsonWriter.a("Claim");
            awsJsonWriter.b(strA);
        }
        if (mappingRule.b() != null) {
            String strB = mappingRule.b();
            awsJsonWriter.a("MatchType");
            awsJsonWriter.b(strB);
        }
        if (mappingRule.c() != null) {
            String strC = mappingRule.c();
            awsJsonWriter.a("Value");
            awsJsonWriter.b(strC);
        }
        if (mappingRule.d() != null) {
            String strD = mappingRule.d();
            awsJsonWriter.a("RoleARN");
            awsJsonWriter.b(strD);
        }
        awsJsonWriter.d();
    }

    public static MappingRuleJsonMarshaller a() {
        if (a == null) {
            a = new MappingRuleJsonMarshaller();
        }
        return a;
    }
}
