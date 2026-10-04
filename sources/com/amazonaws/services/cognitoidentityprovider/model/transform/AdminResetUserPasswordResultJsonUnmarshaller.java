package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminResetUserPasswordResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class AdminResetUserPasswordResultJsonUnmarshaller implements Unmarshaller<AdminResetUserPasswordResult, JsonUnmarshallerContext> {
    private static AdminResetUserPasswordResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminResetUserPasswordResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new AdminResetUserPasswordResult();
    }

    public static AdminResetUserPasswordResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminResetUserPasswordResultJsonUnmarshaller();
        }
        return a;
    }
}
