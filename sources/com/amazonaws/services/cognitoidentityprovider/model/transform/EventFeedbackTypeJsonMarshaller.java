package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.EventFeedbackType;
import com.amazonaws.util.json.AwsJsonWriter;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
class EventFeedbackTypeJsonMarshaller {
    private static EventFeedbackTypeJsonMarshaller a;

    EventFeedbackTypeJsonMarshaller() {
    }

    public void a(EventFeedbackType eventFeedbackType, AwsJsonWriter awsJsonWriter) {
        awsJsonWriter.c();
        if (eventFeedbackType.a() != null) {
            String strA = eventFeedbackType.a();
            awsJsonWriter.a("FeedbackValue");
            awsJsonWriter.b(strA);
        }
        if (eventFeedbackType.b() != null) {
            String strB = eventFeedbackType.b();
            awsJsonWriter.a("Provider");
            awsJsonWriter.b(strB);
        }
        if (eventFeedbackType.c() != null) {
            Date dateC = eventFeedbackType.c();
            awsJsonWriter.a("FeedbackDate");
            awsJsonWriter.a(dateC);
        }
        awsJsonWriter.d();
    }

    public static EventFeedbackTypeJsonMarshaller a() {
        if (a == null) {
            a = new EventFeedbackTypeJsonMarshaller();
        }
        return a;
    }
}
