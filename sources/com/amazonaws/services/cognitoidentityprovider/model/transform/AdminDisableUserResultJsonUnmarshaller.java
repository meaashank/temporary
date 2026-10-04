package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminDisableUserResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class AdminDisableUserResultJsonUnmarshaller implements Unmarshaller<AdminDisableUserResult, JsonUnmarshallerContext> {
    private static AdminDisableUserResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminDisableUserResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new AdminDisableUserResult();
    }

    public static AdminDisableUserResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminDisableUserResultJsonUnmarshaller();
        }
        return a;
    }
}
