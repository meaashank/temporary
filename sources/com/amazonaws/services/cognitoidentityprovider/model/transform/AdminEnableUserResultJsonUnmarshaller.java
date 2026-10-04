package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminEnableUserResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class AdminEnableUserResultJsonUnmarshaller implements Unmarshaller<AdminEnableUserResult, JsonUnmarshallerContext> {
    private static AdminEnableUserResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminEnableUserResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new AdminEnableUserResult();
    }

    public static AdminEnableUserResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminEnableUserResultJsonUnmarshaller();
        }
        return a;
    }
}
