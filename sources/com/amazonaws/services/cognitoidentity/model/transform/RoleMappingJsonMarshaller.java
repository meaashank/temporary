package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.RoleMapping;
import com.amazonaws.services.cognitoidentity.model.RulesConfigurationType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class RoleMappingJsonMarshaller {
    private static RoleMappingJsonMarshaller a;

    RoleMappingJsonMarshaller() {
    }

    public void a(RoleMapping roleMapping, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (roleMapping.a() != null) {
            String strA = roleMapping.a();
            awsJsonWriter.a("Type");
            awsJsonWriter.b(strA);
        }
        if (roleMapping.b() != null) {
            String strB = roleMapping.b();
            awsJsonWriter.a("AmbiguousRoleResolution");
            awsJsonWriter.b(strB);
        }
        if (roleMapping.c() != null) {
            RulesConfigurationType rulesConfigurationTypeC = roleMapping.c();
            awsJsonWriter.a("RulesConfiguration");
            RulesConfigurationTypeJsonMarshaller.a().a(rulesConfigurationTypeC, awsJsonWriter);
        }
        awsJsonWriter.d();
    }

    public static RoleMappingJsonMarshaller a() {
        if (a == null) {
            a = new RoleMappingJsonMarshaller();
        }
        return a;
    }
}
