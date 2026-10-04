package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ResourceServerScopeType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class ResourceServerScopeTypeJsonMarshaller {
    private static ResourceServerScopeTypeJsonMarshaller a;

    ResourceServerScopeTypeJsonMarshaller() {
    }

    public void a(ResourceServerScopeType resourceServerScopeType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (resourceServerScopeType.a() != null) {
            String strA = resourceServerScopeType.a();
            awsJsonWriter.a("ScopeName");
            awsJsonWriter.b(strA);
        }
        if (resourceServerScopeType.b() != null) {
            String strB = resourceServerScopeType.b();
            awsJsonWriter.a("ScopeDescription");
            awsJsonWriter.b(strB);
        }
        awsJsonWriter.d();
    }

    public static ResourceServerScopeTypeJsonMarshaller a() {
        if (a == null) {
            a = new ResourceServerScopeTypeJsonMarshaller();
        }
        return a;
    }
}
