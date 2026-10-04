package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.UpdateGroupResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class UpdateGroupResultJsonUnmarshaller implements Unmarshaller<UpdateGroupResult, JsonUnmarshallerContext> {
    private static UpdateGroupResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public UpdateGroupResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        UpdateGroupResult updateGroupResult = new UpdateGroupResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("Group")) {
                updateGroupResult.a(GroupTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return updateGroupResult;
    }

    public static UpdateGroupResultJsonUnmarshaller a() {
        if (a == null) {
            a = new UpdateGroupResultJsonUnmarshaller();
        }
        return a;
    }
}
