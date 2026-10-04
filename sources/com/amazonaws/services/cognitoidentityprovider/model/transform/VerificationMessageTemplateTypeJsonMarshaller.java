package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.VerificationMessageTemplateType;
import com.amazonaws.util.json.AwsJsonWriter;

/* JADX INFO: loaded from: classes.dex */
class VerificationMessageTemplateTypeJsonMarshaller {
    private static VerificationMessageTemplateTypeJsonMarshaller a;

    VerificationMessageTemplateTypeJsonMarshaller() {
    }

    public void a(VerificationMessageTemplateType verificationMessageTemplateType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (verificationMessageTemplateType.a() != null) {
            String strA = verificationMessageTemplateType.a();
            awsJsonWriter.a("SmsMessage");
            awsJsonWriter.b(strA);
        }
        if (verificationMessageTemplateType.b() != null) {
            String strB = verificationMessageTemplateType.b();
            awsJsonWriter.a("EmailMessage");
            awsJsonWriter.b(strB);
        }
        if (verificationMessageTemplateType.c() != null) {
            String strC = verificationMessageTemplateType.c();
            awsJsonWriter.a("EmailSubject");
            awsJsonWriter.b(strC);
        }
        if (verificationMessageTemplateType.d() != null) {
            String strD = verificationMessageTemplateType.d();
            awsJsonWriter.a("EmailMessageByLink");
            awsJsonWriter.b(strD);
        }
        if (verificationMessageTemplateType.e() != null) {
            String strE = verificationMessageTemplateType.e();
            awsJsonWriter.a("EmailSubjectByLink");
            awsJsonWriter.b(strE);
        }
        if (verificationMessageTemplateType.f() != null) {
            String strF = verificationMessageTemplateType.f();
            awsJsonWriter.a("DefaultEmailOption");
            awsJsonWriter.b(strF);
        }
        awsJsonWriter.d();
    }

    public static VerificationMessageTemplateTypeJsonMarshaller a() {
        if (a == null) {
            a = new VerificationMessageTemplateTypeJsonMarshaller();
        }
        return a;
    }
}
