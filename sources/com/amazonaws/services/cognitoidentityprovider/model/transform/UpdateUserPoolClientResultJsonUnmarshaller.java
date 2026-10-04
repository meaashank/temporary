package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UpdateUserPoolClientResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class UpdateUserPoolClientResultJsonUnmarshaller implements Unmarshaller<UpdateUserPoolClientResult, JsonUnmarshallerContext> {
    private static UpdateUserPoolClientResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public UpdateUserPoolClientResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        UpdateUserPoolClientResult updateUserPoolClientResult = new UpdateUserPoolClientResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("UserPoolClient")) {
                updateUserPoolClientResult.a(UserPoolClientTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return updateUserPoolClientResult;
    }

    public static UpdateUserPoolClientResultJsonUnmarshaller a() {
        if (a == null) {
            a = new UpdateUserPoolClientResultJsonUnmarshaller();
        }
        return a;
    }
}
