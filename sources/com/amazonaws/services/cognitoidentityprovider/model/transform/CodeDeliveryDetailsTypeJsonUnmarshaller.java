package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.CodeDeliveryDetailsType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class CodeDeliveryDetailsTypeJsonUnmarshaller implements Unmarshaller<CodeDeliveryDetailsType, JsonUnmarshallerContext> {
    private static CodeDeliveryDetailsTypeJsonUnmarshaller a;

    CodeDeliveryDetailsTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public CodeDeliveryDetailsType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        CodeDeliveryDetailsType codeDeliveryDetailsType = new CodeDeliveryDetailsType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("Destination")) {
                codeDeliveryDetailsType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("DeliveryMedium")) {
                codeDeliveryDetailsType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("AttributeName")) {
                codeDeliveryDetailsType.e(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return codeDeliveryDetailsType;
    }

    public static CodeDeliveryDetailsTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new CodeDeliveryDetailsTypeJsonUnmarshaller();
        }
        return a;
    }
}
