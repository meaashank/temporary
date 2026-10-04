package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.MFAOptionType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class MFAOptionTypeJsonMarshaller {
    private static MFAOptionTypeJsonMarshaller a;

    MFAOptionTypeJsonMarshaller() {
    }

    public void a(MFAOptionType mFAOptionType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (mFAOptionType.a() != null) {
            String strA = mFAOptionType.a();
            awsJsonWriter.a("DeliveryMedium");
            awsJsonWriter.b(strA);
        }
        if (mFAOptionType.b() != null) {
            String strB = mFAOptionType.b();
            awsJsonWriter.a("AttributeName");
            awsJsonWriter.b(strB);
        }
        awsJsonWriter.d();
    }

    public static MFAOptionTypeJsonMarshaller a() {
        if (a == null) {
            a = new MFAOptionTypeJsonMarshaller();
        }
        return a;
    }
}
