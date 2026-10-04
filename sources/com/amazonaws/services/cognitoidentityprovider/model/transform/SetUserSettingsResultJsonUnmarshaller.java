package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.SetUserSettingsResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class SetUserSettingsResultJsonUnmarshaller implements Unmarshaller<SetUserSettingsResult, JsonUnmarshallerContext> {
    private static SetUserSettingsResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public SetUserSettingsResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new SetUserSettingsResult();
    }

    public static SetUserSettingsResultJsonUnmarshaller a() {
        if (a == null) {
            a = new SetUserSettingsResultJsonUnmarshaller();
        }
        return a;
    }
}
