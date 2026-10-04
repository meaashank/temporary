package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.NumberAttributeConstraintsType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class NumberAttributeConstraintsTypeJsonUnmarshaller implements Unmarshaller<NumberAttributeConstraintsType, JsonUnmarshallerContext> {
    private static NumberAttributeConstraintsTypeJsonUnmarshaller a;

    NumberAttributeConstraintsTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public NumberAttributeConstraintsType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        NumberAttributeConstraintsType numberAttributeConstraintsType = new NumberAttributeConstraintsType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("MinValue")) {
                numberAttributeConstraintsType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("MaxValue")) {
                numberAttributeConstraintsType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return numberAttributeConstraintsType;
    }

    public static NumberAttributeConstraintsTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new NumberAttributeConstraintsTypeJsonUnmarshaller();
        }
        return a;
    }
}
