package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UpdateResourceServerResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class UpdateResourceServerResultJsonUnmarshaller implements Unmarshaller<UpdateResourceServerResult, JsonUnmarshallerContext> {
    private static UpdateResourceServerResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public UpdateResourceServerResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        UpdateResourceServerResult updateResourceServerResult = new UpdateResourceServerResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("ResourceServer")) {
                updateResourceServerResult.a(ResourceServerTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return updateResourceServerResult;
    }

    public static UpdateResourceServerResultJsonUnmarshaller a() {
        if (a == null) {
            a = new UpdateResourceServerResultJsonUnmarshaller();
        }
        return a;
    }
}
