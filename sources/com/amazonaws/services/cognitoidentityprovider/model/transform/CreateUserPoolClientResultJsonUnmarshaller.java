package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.CreateUserPoolClientResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class CreateUserPoolClientResultJsonUnmarshaller implements Unmarshaller<CreateUserPoolClientResult, JsonUnmarshallerContext> {
    private static CreateUserPoolClientResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public CreateUserPoolClientResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        CreateUserPoolClientResult createUserPoolClientResult = new CreateUserPoolClientResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("UserPoolClient")) {
                createUserPoolClientResult.a(UserPoolClientTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return createUserPoolClientResult;
    }

    public static CreateUserPoolClientResultJsonUnmarshaller a() {
        if (a == null) {
            a = new CreateUserPoolClientResultJsonUnmarshaller();
        }
        return a;
    }
}
