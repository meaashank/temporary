package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.SoftwareTokenMfaSettingsType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class SoftwareTokenMfaSettingsTypeJsonUnmarshaller implements Unmarshaller<SoftwareTokenMfaSettingsType, JsonUnmarshallerContext> {
    private static SoftwareTokenMfaSettingsTypeJsonUnmarshaller a;

    SoftwareTokenMfaSettingsTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public SoftwareTokenMfaSettingsType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        SoftwareTokenMfaSettingsType softwareTokenMfaSettingsType = new SoftwareTokenMfaSettingsType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("Enabled")) {
                softwareTokenMfaSettingsType.a(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("PreferredMfa")) {
                softwareTokenMfaSettingsType.c(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return softwareTokenMfaSettingsType;
    }

    public static SoftwareTokenMfaSettingsTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new SoftwareTokenMfaSettingsTypeJsonUnmarshaller();
        }
        return a;
    }
}
