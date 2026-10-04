package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminSetUserMFAPreferenceResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class AdminSetUserMFAPreferenceResultJsonUnmarshaller implements Unmarshaller<AdminSetUserMFAPreferenceResult, JsonUnmarshallerContext> {
    private static AdminSetUserMFAPreferenceResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminSetUserMFAPreferenceResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new AdminSetUserMFAPreferenceResult();
    }

    public static AdminSetUserMFAPreferenceResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminSetUserMFAPreferenceResultJsonUnmarshaller();
        }
        return a;
    }
}
