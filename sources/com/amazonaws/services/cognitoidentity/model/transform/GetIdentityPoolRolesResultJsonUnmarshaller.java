package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.GetIdentityPoolRolesResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.MapUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class GetIdentityPoolRolesResultJsonUnmarshaller implements Unmarshaller<GetIdentityPoolRolesResult, JsonUnmarshallerContext> {
    private static GetIdentityPoolRolesResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public GetIdentityPoolRolesResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        GetIdentityPoolRolesResult getIdentityPoolRolesResult = new GetIdentityPoolRolesResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("IdentityPoolId")) {
                getIdentityPoolRolesResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Roles")) {
                getIdentityPoolRolesResult.a(new MapUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("RoleMappings")) {
                getIdentityPoolRolesResult.c(new MapUnmarshaller(RoleMappingJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return getIdentityPoolRolesResult;
    }

    public static GetIdentityPoolRolesResultJsonUnmarshaller a() {
        if (a == null) {
            a = new GetIdentityPoolRolesResultJsonUnmarshaller();
        }
        return a;
    }
}
