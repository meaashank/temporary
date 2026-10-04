package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.UntagResourceResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class UntagResourceResultJsonUnmarshaller implements Unmarshaller<UntagResourceResult, JsonUnmarshallerContext> {
    private static UntagResourceResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public UntagResourceResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new UntagResourceResult();
    }

    public static UntagResourceResultJsonUnmarshaller a() {
        if (a == null) {
            a = new UntagResourceResultJsonUnmarshaller();
        }
        return a;
    }
}
