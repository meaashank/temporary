package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminUpdateAuthEventFeedbackResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class AdminUpdateAuthEventFeedbackResultJsonUnmarshaller implements Unmarshaller<AdminUpdateAuthEventFeedbackResult, JsonUnmarshallerContext> {
    private static AdminUpdateAuthEventFeedbackResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminUpdateAuthEventFeedbackResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new AdminUpdateAuthEventFeedbackResult();
    }

    public static AdminUpdateAuthEventFeedbackResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminUpdateAuthEventFeedbackResultJsonUnmarshaller();
        }
        return a;
    }
}
