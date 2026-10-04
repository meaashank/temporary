package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.DeleteUserAttributesResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class DeleteUserAttributesResultJsonUnmarshaller implements Unmarshaller<DeleteUserAttributesResult, JsonUnmarshallerContext> {
    private static DeleteUserAttributesResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public DeleteUserAttributesResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new DeleteUserAttributesResult();
    }

    public static DeleteUserAttributesResultJsonUnmarshaller a() {
        if (a == null) {
            a = new DeleteUserAttributesResultJsonUnmarshaller();
        }
        return a;
    }
}
