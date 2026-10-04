package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.CreateResourceServerResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class CreateResourceServerResultJsonUnmarshaller implements Unmarshaller<CreateResourceServerResult, JsonUnmarshallerContext> {
    private static CreateResourceServerResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public CreateResourceServerResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        CreateResourceServerResult createResourceServerResult = new CreateResourceServerResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("ResourceServer")) {
                createResourceServerResult.a(ResourceServerTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return createResourceServerResult;
    }

    public static CreateResourceServerResultJsonUnmarshaller a() {
        if (a == null) {
            a = new CreateResourceServerResultJsonUnmarshaller();
        }
        return a;
    }
}
