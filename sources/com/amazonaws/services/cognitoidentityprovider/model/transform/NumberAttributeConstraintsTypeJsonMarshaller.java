package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.NumberAttributeConstraintsType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class NumberAttributeConstraintsTypeJsonMarshaller {
    private static NumberAttributeConstraintsTypeJsonMarshaller a;

    NumberAttributeConstraintsTypeJsonMarshaller() {
    }

    public void a(NumberAttributeConstraintsType numberAttributeConstraintsType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (numberAttributeConstraintsType.a() != null) {
            String strA = numberAttributeConstraintsType.a();
            awsJsonWriter.a("MinValue");
            awsJsonWriter.b(strA);
        }
        if (numberAttributeConstraintsType.b() != null) {
            String strB = numberAttributeConstraintsType.b();
            awsJsonWriter.a("MaxValue");
            awsJsonWriter.b(strB);
        }
        awsJsonWriter.d();
    }

    public static NumberAttributeConstraintsTypeJsonMarshaller a() {
        if (a == null) {
            a = new NumberAttributeConstraintsTypeJsonMarshaller();
        }
        return a;
    }
}
