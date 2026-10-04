package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminLinkProviderForUserResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class AdminLinkProviderForUserResultJsonUnmarshaller implements Unmarshaller<AdminLinkProviderForUserResult, JsonUnmarshallerContext> {
    private static AdminLinkProviderForUserResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminLinkProviderForUserResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new AdminLinkProviderForUserResult();
    }

    public static AdminLinkProviderForUserResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminLinkProviderForUserResultJsonUnmarshaller();
        }
        return a;
    }
}
