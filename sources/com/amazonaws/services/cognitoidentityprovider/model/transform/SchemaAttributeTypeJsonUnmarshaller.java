package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.SchemaAttributeType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;
import org.apache.xerces.impl.xs.SchemaSymbols;

/* JADX INFO: loaded from: classes.dex */
class SchemaAttributeTypeJsonUnmarshaller implements Unmarshaller<SchemaAttributeType, JsonUnmarshallerContext> {
    private static SchemaAttributeTypeJsonUnmarshaller a;

    SchemaAttributeTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public SchemaAttributeType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        SchemaAttributeType schemaAttributeType = new SchemaAttributeType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals(SchemaSymbols.ATTVAL_NAME)) {
                schemaAttributeType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("AttributeDataType")) {
                schemaAttributeType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("DeveloperOnlyAttribute")) {
                schemaAttributeType.a(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Mutable")) {
                schemaAttributeType.c(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Required")) {
                schemaAttributeType.e(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("NumberAttributeConstraints")) {
                schemaAttributeType.a(NumberAttributeConstraintsTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("StringAttributeConstraints")) {
                schemaAttributeType.a(StringAttributeConstraintsTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return schemaAttributeType;
    }

    public static SchemaAttributeTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new SchemaAttributeTypeJsonUnmarshaller();
        }
        return a;
    }
}
