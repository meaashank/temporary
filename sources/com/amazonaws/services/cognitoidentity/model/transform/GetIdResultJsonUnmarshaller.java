package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.GetIdResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class GetIdResultJsonUnmarshaller implements Unmarshaller<GetIdResult, JsonUnmarshallerContext> {
    private static GetIdResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public GetIdResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        GetIdResult getIdResult = new GetIdResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("IdentityId")) {
                getIdResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return getIdResult;
    }

    public static GetIdResultJsonUnmarshaller a() {
        if (a == null) {
            a = new GetIdResultJsonUnmarshaller();
        }
        return a;
    }
}
