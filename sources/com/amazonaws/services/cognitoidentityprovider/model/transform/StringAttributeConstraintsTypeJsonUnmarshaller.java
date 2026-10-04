package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.StringAttributeConstraintsType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class StringAttributeConstraintsTypeJsonUnmarshaller implements Unmarshaller<StringAttributeConstraintsType, JsonUnmarshallerContext> {
    private static StringAttributeConstraintsTypeJsonUnmarshaller a;

    StringAttributeConstraintsTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public StringAttributeConstraintsType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        StringAttributeConstraintsType stringAttributeConstraintsType = new StringAttributeConstraintsType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("MinLength")) {
                stringAttributeConstraintsType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("MaxLength")) {
                stringAttributeConstraintsType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return stringAttributeConstraintsType;
    }

    public static StringAttributeConstraintsTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new StringAttributeConstraintsTypeJsonUnmarshaller();
        }
        return a;
    }
}
