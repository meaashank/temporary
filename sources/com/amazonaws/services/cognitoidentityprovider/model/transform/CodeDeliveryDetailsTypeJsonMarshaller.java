package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.CodeDeliveryDetailsType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class CodeDeliveryDetailsTypeJsonMarshaller {
    private static CodeDeliveryDetailsTypeJsonMarshaller a;

    CodeDeliveryDetailsTypeJsonMarshaller() {
    }

    public void a(CodeDeliveryDetailsType codeDeliveryDetailsType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (codeDeliveryDetailsType.a() != null) {
            String strA = codeDeliveryDetailsType.a();
            awsJsonWriter.a("Destination");
            awsJsonWriter.b(strA);
        }
        if (codeDeliveryDetailsType.b() != null) {
            String strB = codeDeliveryDetailsType.b();
            awsJsonWriter.a("DeliveryMedium");
            awsJsonWriter.b(strB);
        }
        if (codeDeliveryDetailsType.c() != null) {
            String strC = codeDeliveryDetailsType.c();
            awsJsonWriter.a("AttributeName");
            awsJsonWriter.b(strC);
        }
        awsJsonWriter.d();
    }

    public static CodeDeliveryDetailsTypeJsonMarshaller a() {
        if (a == null) {
            a = new CodeDeliveryDetailsTypeJsonMarshaller();
        }
        return a;
    }
}
