package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.RoleMapping;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class RoleMappingJsonUnmarshaller implements Unmarshaller<RoleMapping, JsonUnmarshallerContext> {
    private static RoleMappingJsonUnmarshaller a;

    RoleMappingJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public RoleMapping a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        RoleMapping roleMapping = new RoleMapping();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("Type")) {
                roleMapping.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("AmbiguousRoleResolution")) {
                roleMapping.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("RulesConfiguration")) {
                roleMapping.a(RulesConfigurationTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return roleMapping;
    }

    public static RoleMappingJsonUnmarshaller a() {
        if (a == null) {
            a = new RoleMappingJsonUnmarshaller();
        }
        return a;
    }
}
