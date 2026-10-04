package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ResourceServerScopeType;
import com.amazonaws.services.cognitoidentityprovider.model.ResourceServerType;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.List;
import org.apache.xerces.impl.xs.SchemaSymbols;

/* JADX INFO: loaded from: classes.dex */
class ResourceServerTypeJsonMarshaller {
    private static ResourceServerTypeJsonMarshaller a;

    ResourceServerTypeJsonMarshaller() {
    }

    public void a(ResourceServerType resourceServerType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (resourceServerType.a() != null) {
            String strA = resourceServerType.a();
            awsJsonWriter.a("UserPoolId");
            awsJsonWriter.b(strA);
        }
        if (resourceServerType.b() != null) {
            String strB = resourceServerType.b();
            awsJsonWriter.a("Identifier");
            awsJsonWriter.b(strB);
        }
        if (resourceServerType.c() != null) {
            String strC = resourceServerType.c();
            awsJsonWriter.a(SchemaSymbols.ATTVAL_NAME);
            awsJsonWriter.b(strC);
        }
        if (resourceServerType.d() != null) {
            List<ResourceServerScopeType> listD = resourceServerType.d();
            awsJsonWriter.a("Scopes");
            awsJsonWriter.a();
            for (ResourceServerScopeType resourceServerScopeType : listD) {
                if (resourceServerScopeType != null) {
                    ResourceServerScopeTypeJsonMarshaller.a().a(resourceServerScopeType, awsJsonWriter);
                }
            }
            awsJsonWriter.b();
        }
        awsJsonWriter.d();
    }

    public static ResourceServerTypeJsonMarshaller a() {
        if (a == null) {
            a = new ResourceServerTypeJsonMarshaller();
        }
        return a;
    }
}
