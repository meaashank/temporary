package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.SoftwareTokenMfaConfigType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class SoftwareTokenMfaConfigTypeJsonUnmarshaller implements Unmarshaller<SoftwareTokenMfaConfigType, JsonUnmarshallerContext> {
    private static SoftwareTokenMfaConfigTypeJsonUnmarshaller a;

    SoftwareTokenMfaConfigTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public SoftwareTokenMfaConfigType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        SoftwareTokenMfaConfigType softwareTokenMfaConfigType = new SoftwareTokenMfaConfigType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("Enabled")) {
                softwareTokenMfaConfigType.a(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return softwareTokenMfaConfigType;
    }

    public static SoftwareTokenMfaConfigTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new SoftwareTokenMfaConfigTypeJsonUnmarshaller();
        }
        return a;
    }
}
