package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.SmsMfaConfigType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class SmsMfaConfigTypeJsonUnmarshaller implements Unmarshaller<SmsMfaConfigType, JsonUnmarshallerContext> {
    private static SmsMfaConfigTypeJsonUnmarshaller a;

    SmsMfaConfigTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public SmsMfaConfigType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        SmsMfaConfigType smsMfaConfigType = new SmsMfaConfigType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("SmsAuthenticationMessage")) {
                smsMfaConfigType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("SmsConfiguration")) {
                smsMfaConfigType.a(SmsConfigurationTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return smsMfaConfigType;
    }

    public static SmsMfaConfigTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new SmsMfaConfigTypeJsonUnmarshaller();
        }
        return a;
    }
}
