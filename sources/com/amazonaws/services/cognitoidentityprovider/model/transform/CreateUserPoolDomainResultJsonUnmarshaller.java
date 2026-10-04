package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.CreateUserPoolDomainResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class CreateUserPoolDomainResultJsonUnmarshaller implements Unmarshaller<CreateUserPoolDomainResult, JsonUnmarshallerContext> {
    private static CreateUserPoolDomainResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public CreateUserPoolDomainResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        CreateUserPoolDomainResult createUserPoolDomainResult = new CreateUserPoolDomainResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("CloudFrontDomain")) {
                createUserPoolDomainResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return createUserPoolDomainResult;
    }

    public static CreateUserPoolDomainResultJsonUnmarshaller a() {
        if (a == null) {
            a = new CreateUserPoolDomainResultJsonUnmarshaller();
        }
        return a;
    }
}
