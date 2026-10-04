package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.CreateUserPoolResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class CreateUserPoolResultJsonUnmarshaller implements Unmarshaller<CreateUserPoolResult, JsonUnmarshallerContext> {
    private static CreateUserPoolResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public CreateUserPoolResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        CreateUserPoolResult createUserPoolResult = new CreateUserPoolResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("UserPool")) {
                createUserPoolResult.a(UserPoolTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return createUserPoolResult;
    }

    public static CreateUserPoolResultJsonUnmarshaller a() {
        if (a == null) {
            a = new CreateUserPoolResultJsonUnmarshaller();
        }
        return a;
    }
}
