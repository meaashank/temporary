package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.NotifyConfigurationType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class NotifyConfigurationTypeJsonUnmarshaller implements Unmarshaller<NotifyConfigurationType, JsonUnmarshallerContext> {
    private static NotifyConfigurationTypeJsonUnmarshaller a;

    NotifyConfigurationTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public NotifyConfigurationType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        NotifyConfigurationType notifyConfigurationType = new NotifyConfigurationType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("From")) {
                notifyConfigurationType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ReplyTo")) {
                notifyConfigurationType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("SourceArn")) {
                notifyConfigurationType.e(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("BlockEmail")) {
                notifyConfigurationType.a(NotifyEmailTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("NoActionEmail")) {
                notifyConfigurationType.c(NotifyEmailTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("MfaEmail")) {
                notifyConfigurationType.e(NotifyEmailTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return notifyConfigurationType;
    }

    public static NotifyConfigurationTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new NotifyConfigurationTypeJsonUnmarshaller();
        }
        return a;
    }
}
