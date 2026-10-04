package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.CreateGroupResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class CreateGroupResultJsonUnmarshaller implements Unmarshaller<CreateGroupResult, JsonUnmarshallerContext> {
    private static CreateGroupResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public CreateGroupResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        CreateGroupResult createGroupResult = new CreateGroupResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("Group")) {
                createGroupResult.a(GroupTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return createGroupResult;
    }

    public static CreateGroupResultJsonUnmarshaller a() {
        if (a == null) {
            a = new CreateGroupResultJsonUnmarshaller();
        }
        return a;
    }
}
