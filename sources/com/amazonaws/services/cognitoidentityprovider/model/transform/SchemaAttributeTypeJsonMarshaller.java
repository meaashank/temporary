package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.NumberAttributeConstraintsType;
import com.amazonaws.services.cognitoidentityprovider.model.SchemaAttributeType;
import com.amazonaws.services.cognitoidentityprovider.model.StringAttributeConstraintsType;
import com.amazonaws.util.json.AwsJsonWriter;
import org.apache.xerces.impl.xs.SchemaSymbols;

/* JADX INFO: loaded from: classes.dex */
class SchemaAttributeTypeJsonMarshaller {
    private static SchemaAttributeTypeJsonMarshaller a;

    SchemaAttributeTypeJsonMarshaller() {
    }

    public void a(SchemaAttributeType schemaAttributeType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (schemaAttributeType.a() != null) {
            String strA = schemaAttributeType.a();
            awsJsonWriter.a(SchemaSymbols.ATTVAL_NAME);
            awsJsonWriter.b(strA);
        }
        if (schemaAttributeType.b() != null) {
            String strB = schemaAttributeType.b();
            awsJsonWriter.a("AttributeDataType");
            awsJsonWriter.b(strB);
        }
        if (schemaAttributeType.d() != null) {
            Boolean boolD = schemaAttributeType.d();
            awsJsonWriter.a("DeveloperOnlyAttribute");
            awsJsonWriter.a(boolD.booleanValue());
        }
        if (schemaAttributeType.f() != null) {
            Boolean boolF = schemaAttributeType.f();
            awsJsonWriter.a("Mutable");
            awsJsonWriter.a(boolF.booleanValue());
        }
        if (schemaAttributeType.h() != null) {
            Boolean boolH = schemaAttributeType.h();
            awsJsonWriter.a("Required");
            awsJsonWriter.a(boolH.booleanValue());
        }
        if (schemaAttributeType.i() != null) {
            NumberAttributeConstraintsType numberAttributeConstraintsTypeI = schemaAttributeType.i();
            awsJsonWriter.a("NumberAttributeConstraints");
            NumberAttributeConstraintsTypeJsonMarshaller.a().a(numberAttributeConstraintsTypeI, awsJsonWriter);
        }
        if (schemaAttributeType.j() != null) {
            StringAttributeConstraintsType stringAttributeConstraintsTypeJ = schemaAttributeType.j();
            awsJsonWriter.a("StringAttributeConstraints");
            StringAttributeConstraintsTypeJsonMarshaller.a().a(stringAttributeConstraintsTypeJ, awsJsonWriter);
        }
        awsJsonWriter.d();
    }

    public static SchemaAttributeTypeJsonMarshaller a() {
        if (a == null) {
            a = new SchemaAttributeTypeJsonMarshaller();
        }
        return a;
    }
}
