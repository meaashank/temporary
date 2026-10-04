package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminDeleteUserAttributesResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class AdminDeleteUserAttributesResultJsonUnmarshaller implements Unmarshaller<AdminDeleteUserAttributesResult, JsonUnmarshallerContext> {
    private static AdminDeleteUserAttributesResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminDeleteUserAttributesResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new AdminDeleteUserAttributesResult();
    }

    public static AdminDeleteUserAttributesResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminDeleteUserAttributesResultJsonUnmarshaller();
        }
        return a;
    }
}
