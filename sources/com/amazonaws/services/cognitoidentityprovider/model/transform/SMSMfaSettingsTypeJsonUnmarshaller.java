package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.SMSMfaSettingsType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class SMSMfaSettingsTypeJsonUnmarshaller implements Unmarshaller<SMSMfaSettingsType, JsonUnmarshallerContext> {
    private static SMSMfaSettingsTypeJsonUnmarshaller a;

    SMSMfaSettingsTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public SMSMfaSettingsType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        SMSMfaSettingsType sMSMfaSettingsType = new SMSMfaSettingsType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("Enabled")) {
                sMSMfaSettingsType.a(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("PreferredMfa")) {
                sMSMfaSettingsType.c(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return sMSMfaSettingsType;
    }

    public static SMSMfaSettingsTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new SMSMfaSettingsTypeJsonUnmarshaller();
        }
        return a;
    }
}
