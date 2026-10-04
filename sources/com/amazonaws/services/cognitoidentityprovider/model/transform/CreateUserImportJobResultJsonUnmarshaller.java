package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.CreateUserImportJobResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class CreateUserImportJobResultJsonUnmarshaller implements Unmarshaller<CreateUserImportJobResult, JsonUnmarshallerContext> {
    private static CreateUserImportJobResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public CreateUserImportJobResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        CreateUserImportJobResult createUserImportJobResult = new CreateUserImportJobResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("UserImportJob")) {
                createUserImportJobResult.a(UserImportJobTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return createUserImportJobResult;
    }

    public static CreateUserImportJobResultJsonUnmarshaller a() {
        if (a == null) {
            a = new CreateUserImportJobResultJsonUnmarshaller();
        }
        return a;
    }
}
