package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.VerificationMessageTemplateType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class VerificationMessageTemplateTypeJsonUnmarshaller implements Unmarshaller<VerificationMessageTemplateType, JsonUnmarshallerContext> {
    private static VerificationMessageTemplateTypeJsonUnmarshaller a;

    VerificationMessageTemplateTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public VerificationMessageTemplateType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        VerificationMessageTemplateType verificationMessageTemplateType = new VerificationMessageTemplateType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("SmsMessage")) {
                verificationMessageTemplateType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("EmailMessage")) {
                verificationMessageTemplateType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("EmailSubject")) {
                verificationMessageTemplateType.e(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("EmailMessageByLink")) {
                verificationMessageTemplateType.g(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("EmailSubjectByLink")) {
                verificationMessageTemplateType.i(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("DefaultEmailOption")) {
                verificationMessageTemplateType.k(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return verificationMessageTemplateType;
    }

    public static VerificationMessageTemplateTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new VerificationMessageTemplateTypeJsonUnmarshaller();
        }
        return a;
    }
}
