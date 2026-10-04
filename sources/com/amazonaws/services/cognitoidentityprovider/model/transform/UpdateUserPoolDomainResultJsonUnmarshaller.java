package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UpdateUserPoolDomainResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class UpdateUserPoolDomainResultJsonUnmarshaller implements Unmarshaller<UpdateUserPoolDomainResult, JsonUnmarshallerContext> {
    private static UpdateUserPoolDomainResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public UpdateUserPoolDomainResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        UpdateUserPoolDomainResult updateUserPoolDomainResult = new UpdateUserPoolDomainResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("CloudFrontDomain")) {
                updateUserPoolDomainResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return updateUserPoolDomainResult;
    }

    public static UpdateUserPoolDomainResultJsonUnmarshaller a() {
        if (a == null) {
            a = new UpdateUserPoolDomainResultJsonUnmarshaller();
        }
        return a;
    }
}
