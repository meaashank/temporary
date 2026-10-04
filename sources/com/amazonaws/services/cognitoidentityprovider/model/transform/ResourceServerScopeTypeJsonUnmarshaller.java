package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ResourceServerScopeType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class ResourceServerScopeTypeJsonUnmarshaller implements Unmarshaller<ResourceServerScopeType, JsonUnmarshallerContext> {
    private static ResourceServerScopeTypeJsonUnmarshaller a;

    ResourceServerScopeTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public ResourceServerScopeType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        ResourceServerScopeType resourceServerScopeType = new ResourceServerScopeType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("ScopeName")) {
                resourceServerScopeType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ScopeDescription")) {
                resourceServerScopeType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return resourceServerScopeType;
    }

    public static ResourceServerScopeTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new ResourceServerScopeTypeJsonUnmarshaller();
        }
        return a;
    }
}
