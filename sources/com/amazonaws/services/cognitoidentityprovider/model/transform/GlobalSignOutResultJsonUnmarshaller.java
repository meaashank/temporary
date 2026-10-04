package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.GlobalSignOutResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class GlobalSignOutResultJsonUnmarshaller implements Unmarshaller<GlobalSignOutResult, JsonUnmarshallerContext> {
    private static GlobalSignOutResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public GlobalSignOutResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new GlobalSignOutResult();
    }

    public static GlobalSignOutResultJsonUnmarshaller a() {
        if (a == null) {
            a = new GlobalSignOutResultJsonUnmarshaller();
        }
        return a;
    }
}
