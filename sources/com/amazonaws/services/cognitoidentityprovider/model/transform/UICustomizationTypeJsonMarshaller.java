package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UICustomizationType;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
class UICustomizationTypeJsonMarshaller {
    private static UICustomizationTypeJsonMarshaller a;

    UICustomizationTypeJsonMarshaller() {
    }

    public void a(UICustomizationType uICustomizationType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (uICustomizationType.a() != null) {
            String strA = uICustomizationType.a();
            awsJsonWriter.a("UserPoolId");
            awsJsonWriter.b(strA);
        }
        if (uICustomizationType.b() != null) {
            String strB = uICustomizationType.b();
            awsJsonWriter.a("ClientId");
            awsJsonWriter.b(strB);
        }
        if (uICustomizationType.c() != null) {
            String strC = uICustomizationType.c();
            awsJsonWriter.a("ImageUrl");
            awsJsonWriter.b(strC);
        }
        if (uICustomizationType.d() != null) {
            String strD = uICustomizationType.d();
            awsJsonWriter.a("CSS");
            awsJsonWriter.b(strD);
        }
        if (uICustomizationType.e() != null) {
            String strE = uICustomizationType.e();
            awsJsonWriter.a("CSSVersion");
            awsJsonWriter.b(strE);
        }
        if (uICustomizationType.f() != null) {
            Date dateF = uICustomizationType.f();
            awsJsonWriter.a("LastModifiedDate");
            awsJsonWriter.a(dateF);
        }
        if (uICustomizationType.g() != null) {
            Date dateG = uICustomizationType.g();
            awsJsonWriter.a("CreationDate");
            awsJsonWriter.a(dateG);
        }
        awsJsonWriter.d();
    }

    public static UICustomizationTypeJsonMarshaller a() {
        if (a == null) {
            a = new UICustomizationTypeJsonMarshaller();
        }
        return a;
    }
}
