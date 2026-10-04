package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminSetUserSettingsResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class AdminSetUserSettingsResultJsonUnmarshaller implements Unmarshaller<AdminSetUserSettingsResult, JsonUnmarshallerContext> {
    private static AdminSetUserSettingsResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminSetUserSettingsResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new AdminSetUserSettingsResult();
    }

    public static AdminSetUserSettingsResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminSetUserSettingsResultJsonUnmarshaller();
        }
        return a;
    }
}
