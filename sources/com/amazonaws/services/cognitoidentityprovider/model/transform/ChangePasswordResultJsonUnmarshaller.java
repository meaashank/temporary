package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ChangePasswordResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class ChangePasswordResultJsonUnmarshaller implements Unmarshaller<ChangePasswordResult, JsonUnmarshallerContext> {
    private static ChangePasswordResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public ChangePasswordResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new ChangePasswordResult();
    }

    public static ChangePasswordResultJsonUnmarshaller a() {
        if (a == null) {
            a = new ChangePasswordResultJsonUnmarshaller();
        }
        return a;
    }
}
