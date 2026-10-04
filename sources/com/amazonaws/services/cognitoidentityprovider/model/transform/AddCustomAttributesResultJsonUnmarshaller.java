package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AddCustomAttributesResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class AddCustomAttributesResultJsonUnmarshaller implements Unmarshaller<AddCustomAttributesResult, JsonUnmarshallerContext> {
    private static AddCustomAttributesResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AddCustomAttributesResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new AddCustomAttributesResult();
    }

    public static AddCustomAttributesResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AddCustomAttributesResultJsonUnmarshaller();
        }
        return a;
    }
}
