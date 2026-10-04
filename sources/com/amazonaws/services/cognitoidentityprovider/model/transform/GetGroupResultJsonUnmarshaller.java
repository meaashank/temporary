package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.GetGroupResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class GetGroupResultJsonUnmarshaller implements Unmarshaller<GetGroupResult, JsonUnmarshallerContext> {
    private static GetGroupResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public GetGroupResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        GetGroupResult getGroupResult = new GetGroupResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("Group")) {
                getGroupResult.a(GroupTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return getGroupResult;
    }

    public static GetGroupResultJsonUnmarshaller a() {
        if (a == null) {
            a = new GetGroupResultJsonUnmarshaller();
        }
        return a;
    }
}
