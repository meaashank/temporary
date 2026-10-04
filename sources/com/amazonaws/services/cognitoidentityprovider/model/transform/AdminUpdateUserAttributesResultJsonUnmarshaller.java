package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminUpdateUserAttributesResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class AdminUpdateUserAttributesResultJsonUnmarshaller implements Unmarshaller<AdminUpdateUserAttributesResult, JsonUnmarshallerContext> {
    private static AdminUpdateUserAttributesResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminUpdateUserAttributesResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new AdminUpdateUserAttributesResult();
    }

    public static AdminUpdateUserAttributesResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminUpdateUserAttributesResultJsonUnmarshaller();
        }
        return a;
    }
}
