package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.SmsConfigurationType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class SmsConfigurationTypeJsonUnmarshaller implements Unmarshaller<SmsConfigurationType, JsonUnmarshallerContext> {
    private static SmsConfigurationTypeJsonUnmarshaller a;

    SmsConfigurationTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public SmsConfigurationType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        SmsConfigurationType smsConfigurationType = new SmsConfigurationType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("SnsCallerArn")) {
                smsConfigurationType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ExternalId")) {
                smsConfigurationType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return smsConfigurationType;
    }

    public static SmsConfigurationTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new SmsConfigurationTypeJsonUnmarshaller();
        }
        return a;
    }
}
