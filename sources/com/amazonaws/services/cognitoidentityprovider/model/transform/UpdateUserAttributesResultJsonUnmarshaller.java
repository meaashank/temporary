package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UpdateUserAttributesResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class UpdateUserAttributesResultJsonUnmarshaller implements Unmarshaller<UpdateUserAttributesResult, JsonUnmarshallerContext> {
    private static UpdateUserAttributesResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public UpdateUserAttributesResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        UpdateUserAttributesResult updateUserAttributesResult = new UpdateUserAttributesResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("CodeDeliveryDetailsList")) {
                updateUserAttributesResult.a(new ListUnmarshaller(CodeDeliveryDetailsTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return updateUserAttributesResult;
    }

    public static UpdateUserAttributesResultJsonUnmarshaller a() {
        if (a == null) {
            a = new UpdateUserAttributesResultJsonUnmarshaller();
        }
        return a;
    }
}
