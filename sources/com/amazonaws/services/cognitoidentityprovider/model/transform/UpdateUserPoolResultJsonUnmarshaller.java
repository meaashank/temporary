package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UpdateUserPoolResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class UpdateUserPoolResultJsonUnmarshaller implements Unmarshaller<UpdateUserPoolResult, JsonUnmarshallerContext> {
    private static UpdateUserPoolResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public UpdateUserPoolResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new UpdateUserPoolResult();
    }

    public static UpdateUserPoolResultJsonUnmarshaller a() {
        if (a == null) {
            a = new UpdateUserPoolResultJsonUnmarshaller();
        }
        return a;
    }
}
