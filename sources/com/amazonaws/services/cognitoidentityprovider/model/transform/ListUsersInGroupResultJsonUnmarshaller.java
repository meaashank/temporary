package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ListUsersInGroupResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class ListUsersInGroupResultJsonUnmarshaller implements Unmarshaller<ListUsersInGroupResult, JsonUnmarshallerContext> {
    private static ListUsersInGroupResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public ListUsersInGroupResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        ListUsersInGroupResult listUsersInGroupResult = new ListUsersInGroupResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("Users")) {
                listUsersInGroupResult.a(new ListUnmarshaller(UserTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("NextToken")) {
                listUsersInGroupResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return listUsersInGroupResult;
    }

    public static ListUsersInGroupResultJsonUnmarshaller a() {
        if (a == null) {
            a = new ListUsersInGroupResultJsonUnmarshaller();
        }
        return a;
    }
}
