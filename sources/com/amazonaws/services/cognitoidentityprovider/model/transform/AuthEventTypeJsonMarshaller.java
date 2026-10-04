package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AuthEventType;
import com.amazonaws.services.cognitoidentityprovider.model.ChallengeResponseType;
import com.amazonaws.services.cognitoidentityprovider.model.EventContextDataType;
import com.amazonaws.services.cognitoidentityprovider.model.EventFeedbackType;
import com.amazonaws.services.cognitoidentityprovider.model.EventRiskType;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
class AuthEventTypeJsonMarshaller {
    private static AuthEventTypeJsonMarshaller a;

    AuthEventTypeJsonMarshaller() {
    }

    public void a(AuthEventType authEventType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (authEventType.a() != null) {
            String strA = authEventType.a();
            awsJsonWriter.a("EventId");
            awsJsonWriter.b(strA);
        }
        if (authEventType.b() != null) {
            String strB = authEventType.b();
            awsJsonWriter.a("EventType");
            awsJsonWriter.b(strB);
        }
        if (authEventType.c() != null) {
            Date dateC = authEventType.c();
            awsJsonWriter.a("CreationDate");
            awsJsonWriter.a(dateC);
        }
        if (authEventType.d() != null) {
            String strD = authEventType.d();
            awsJsonWriter.a("EventResponse");
            awsJsonWriter.b(strD);
        }
        if (authEventType.e() != null) {
            EventRiskType eventRiskTypeE = authEventType.e();
            awsJsonWriter.a("EventRisk");
            EventRiskTypeJsonMarshaller.a().a(eventRiskTypeE, awsJsonWriter);
        }
        if (authEventType.f() != null) {
            List<ChallengeResponseType> listF = authEventType.f();
            awsJsonWriter.a("ChallengeResponses");
            awsJsonWriter.a();
            for (ChallengeResponseType challengeResponseType : listF) {
                if (challengeResponseType != null) {
                    ChallengeResponseTypeJsonMarshaller.a().a(challengeResponseType, awsJsonWriter);
                }
            }
            awsJsonWriter.b();
        }
        if (authEventType.g() != null) {
            EventContextDataType eventContextDataTypeG = authEventType.g();
            awsJsonWriter.a("EventContextData");
            EventContextDataTypeJsonMarshaller.a().a(eventContextDataTypeG, awsJsonWriter);
        }
        if (authEventType.h() != null) {
            EventFeedbackType eventFeedbackTypeH = authEventType.h();
            awsJsonWriter.a("EventFeedback");
            EventFeedbackTypeJsonMarshaller.a().a(eventFeedbackTypeH, awsJsonWriter);
        }
        awsJsonWriter.d();
    }

    public static AuthEventTypeJsonMarshaller a() {
        if (a == null) {
            a = new AuthEventTypeJsonMarshaller();
        }
        return a;
    }
}
