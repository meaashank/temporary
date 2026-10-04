package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AuthEventType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class AuthEventTypeJsonUnmarshaller implements Unmarshaller<AuthEventType, JsonUnmarshallerContext> {
    private static AuthEventTypeJsonUnmarshaller a;

    AuthEventTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public AuthEventType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        AuthEventType authEventType = new AuthEventType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("EventId")) {
                authEventType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("EventType")) {
                authEventType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("CreationDate")) {
                authEventType.a(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("EventResponse")) {
                authEventType.e(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("EventRisk")) {
                authEventType.a(EventRiskTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("ChallengeResponses")) {
                authEventType.a(new ListUnmarshaller(ChallengeResponseTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("EventContextData")) {
                authEventType.a(EventContextDataTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("EventFeedback")) {
                authEventType.a(EventFeedbackTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return authEventType;
    }

    public static AuthEventTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new AuthEventTypeJsonUnmarshaller();
        }
        return a;
    }
}
