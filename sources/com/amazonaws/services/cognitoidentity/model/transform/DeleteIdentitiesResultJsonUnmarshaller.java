package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.DeleteIdentitiesResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class DeleteIdentitiesResultJsonUnmarshaller implements Unmarshaller<DeleteIdentitiesResult, JsonUnmarshallerContext> {
    private static DeleteIdentitiesResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public DeleteIdentitiesResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        DeleteIdentitiesResult deleteIdentitiesResult = new DeleteIdentitiesResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("UnprocessedIdentityIds")) {
                deleteIdentitiesResult.a(new ListUnmarshaller(UnprocessedIdentityIdJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return deleteIdentitiesResult;
    }

    public static DeleteIdentitiesResultJsonUnmarshaller a() {
        if (a == null) {
            a = new DeleteIdentitiesResultJsonUnmarshaller();
        }
        return a;
    }
}
