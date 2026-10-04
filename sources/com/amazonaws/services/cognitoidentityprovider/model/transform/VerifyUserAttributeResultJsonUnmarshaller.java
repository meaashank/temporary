package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.VerifyUserAttributeResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class VerifyUserAttributeResultJsonUnmarshaller implements Unmarshaller<VerifyUserAttributeResult, JsonUnmarshallerContext> {
    private static VerifyUserAttributeResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public VerifyUserAttributeResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new VerifyUserAttributeResult();
    }

    public static VerifyUserAttributeResultJsonUnmarshaller a() {
        if (a == null) {
            a = new VerifyUserAttributeResultJsonUnmarshaller();
        }
        return a;
    }
}
