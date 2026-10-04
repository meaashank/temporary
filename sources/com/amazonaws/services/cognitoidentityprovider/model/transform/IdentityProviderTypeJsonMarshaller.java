package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.IdentityProviderType;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.Date;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
class IdentityProviderTypeJsonMarshaller {
    private static IdentityProviderTypeJsonMarshaller a;

    IdentityProviderTypeJsonMarshaller() {
    }

    public void a(IdentityProviderType identityProviderType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (identityProviderType.a() != null) {
            String strA = identityProviderType.a();
            awsJsonWriter.a("UserPoolId");
            awsJsonWriter.b(strA);
        }
        if (identityProviderType.b() != null) {
            String strB = identityProviderType.b();
            awsJsonWriter.a("ProviderName");
            awsJsonWriter.b(strB);
        }
        if (identityProviderType.c() != null) {
            String strC = identityProviderType.c();
            awsJsonWriter.a("ProviderType");
            awsJsonWriter.b(strC);
        }
        if (identityProviderType.d() != null) {
            Map<String, String> mapD = identityProviderType.d();
            awsJsonWriter.a("ProviderDetails");
            awsJsonWriter.c();
            for (Map.Entry<String, String> entry : mapD.entrySet()) {
                String value = entry.getValue();
                if (value != null) {
                    awsJsonWriter.a(entry.getKey());
                    awsJsonWriter.b(value);
                }
            }
            awsJsonWriter.d();
        }
        if (identityProviderType.f() != null) {
            Map<String, String> mapF = identityProviderType.f();
            awsJsonWriter.a("AttributeMapping");
            awsJsonWriter.c();
            for (Map.Entry<String, String> entry2 : mapF.entrySet()) {
                String value2 = entry2.getValue();
                if (value2 != null) {
                    awsJsonWriter.a(entry2.getKey());
                    awsJsonWriter.b(value2);
                }
            }
            awsJsonWriter.d();
        }
        if (identityProviderType.h() != null) {
            List<String> listH = identityProviderType.h();
            awsJsonWriter.a("IdpIdentifiers");
            awsJsonWriter.a();
            for (String str : listH) {
                if (str != null) {
                    awsJsonWriter.b(str);
                }
            }
            awsJsonWriter.b();
        }
        if (identityProviderType.i() != null) {
            Date dateI = identityProviderType.i();
            awsJsonWriter.a("LastModifiedDate");
            awsJsonWriter.a(dateI);
        }
        if (identityProviderType.j() != null) {
            Date dateJ = identityProviderType.j();
            awsJsonWriter.a("CreationDate");
            awsJsonWriter.a(dateJ);
        }
        awsJsonWriter.d();
    }

    public static IdentityProviderTypeJsonMarshaller a() {
        if (a == null) {
            a = new IdentityProviderTypeJsonMarshaller();
        }
        return a;
    }
}
