package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AttributeType;
import com.amazonaws.util.json.AwsJsonWriter;
import org.apache.xerces.impl.xs.SchemaSymbols;

/* JADX INFO: loaded from: classes.dex */
class AttributeTypeJsonMarshaller {
    private static AttributeTypeJsonMarshaller a;

    AttributeTypeJsonMarshaller() {
    }

    public void a(AttributeType attributeType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (attributeType.a() != null) {
            String strA = attributeType.a();
            awsJsonWriter.a(SchemaSymbols.ATTVAL_NAME);
            awsJsonWriter.b(strA);
        }
        if (attributeType.b() != null) {
            String strB = attributeType.b();
            awsJsonWriter.a("Value");
            awsJsonWriter.b(strB);
        }
        awsJsonWriter.d();
    }

    public static AttributeTypeJsonMarshaller a() {
        if (a == null) {
            a = new AttributeTypeJsonMarshaller();
        }
        return a;
    }
}
