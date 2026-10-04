package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.TagResourceResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class TagResourceResultJsonUnmarshaller implements Unmarshaller<TagResourceResult, JsonUnmarshallerContext> {
    private static TagResourceResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public TagResourceResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new TagResourceResult();
    }

    public static TagResourceResultJsonUnmarshaller a() {
        if (a == null) {
            a = new TagResourceResultJsonUnmarshaller();
        }
        return a;
    }
}
