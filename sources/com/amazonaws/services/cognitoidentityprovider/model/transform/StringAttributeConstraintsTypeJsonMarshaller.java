package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.StringAttributeConstraintsType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class StringAttributeConstraintsTypeJsonMarshaller {
    private static StringAttributeConstraintsTypeJsonMarshaller a;

    StringAttributeConstraintsTypeJsonMarshaller() {
    }

    public void a(StringAttributeConstraintsType stringAttributeConstraintsType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (stringAttributeConstraintsType.a() != null) {
            String strA = stringAttributeConstraintsType.a();
            awsJsonWriter.a("MinLength");
            awsJsonWriter.b(strA);
        }
        if (stringAttributeConstraintsType.b() != null) {
            String strB = stringAttributeConstraintsType.b();
            awsJsonWriter.a("MaxLength");
            awsJsonWriter.b(strB);
        }
        awsJsonWriter.d();
    }

    public static StringAttributeConstraintsTypeJsonMarshaller a() {
        if (a == null) {
            a = new StringAttributeConstraintsTypeJsonMarshaller();
        }
        return a;
    }
}
