package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.SetUserMFAPreferenceResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class SetUserMFAPreferenceResultJsonUnmarshaller implements Unmarshaller<SetUserMFAPreferenceResult, JsonUnmarshallerContext> {
    private static SetUserMFAPreferenceResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public SetUserMFAPreferenceResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new SetUserMFAPreferenceResult();
    }

    public static SetUserMFAPreferenceResultJsonUnmarshaller a() {
        if (a == null) {
            a = new SetUserMFAPreferenceResultJsonUnmarshaller();
        }
        return a;
    }
}
