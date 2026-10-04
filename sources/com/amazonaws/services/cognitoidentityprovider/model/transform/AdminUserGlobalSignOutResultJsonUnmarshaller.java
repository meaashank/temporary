package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminUserGlobalSignOutResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class AdminUserGlobalSignOutResultJsonUnmarshaller implements Unmarshaller<AdminUserGlobalSignOutResult, JsonUnmarshallerContext> {
    private static AdminUserGlobalSignOutResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminUserGlobalSignOutResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new AdminUserGlobalSignOutResult();
    }

    public static AdminUserGlobalSignOutResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminUserGlobalSignOutResultJsonUnmarshaller();
        }
        return a;
    }
}
