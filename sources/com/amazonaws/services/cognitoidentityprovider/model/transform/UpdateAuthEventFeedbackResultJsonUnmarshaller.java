package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UpdateAuthEventFeedbackResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class UpdateAuthEventFeedbackResultJsonUnmarshaller implements Unmarshaller<UpdateAuthEventFeedbackResult, JsonUnmarshallerContext> {
    private static UpdateAuthEventFeedbackResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public UpdateAuthEventFeedbackResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new UpdateAuthEventFeedbackResult();
    }

    public static UpdateAuthEventFeedbackResultJsonUnmarshaller a() {
        if (a == null) {
            a = new UpdateAuthEventFeedbackResultJsonUnmarshaller();
        }
        return a;
    }
}
