package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.EventFeedbackType;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class EventFeedbackTypeJsonUnmarshaller implements Unmarshaller<EventFeedbackType, JsonUnmarshallerContext> {
    private static EventFeedbackTypeJsonUnmarshaller a;

    EventFeedbackTypeJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public EventFeedbackType a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        EventFeedbackType eventFeedbackType = new EventFeedbackType();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("FeedbackValue")) {
                eventFeedbackType.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("Provider")) {
                eventFeedbackType.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("FeedbackDate")) {
                eventFeedbackType.a(SimpleTypeJsonUnmarshallers.DateJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return eventFeedbackType;
    }

    public static EventFeedbackTypeJsonUnmarshaller a() {
        if (a == null) {
            a = new EventFeedbackTypeJsonUnmarshaller();
        }
        return a;
    }
}
