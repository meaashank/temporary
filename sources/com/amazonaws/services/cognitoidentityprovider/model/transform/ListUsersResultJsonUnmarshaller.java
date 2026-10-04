package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ListUsersResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class ListUsersResultJsonUnmarshaller implements Unmarshaller<ListUsersResult, JsonUnmarshallerContext> {
    private static ListUsersResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public ListUsersResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        ListUsersResult listUsersResult = new ListUsersResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("Users")) {
                listUsersResult.a(new ListUnmarshaller(UserTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("PaginationToken")) {
                listUsersResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return listUsersResult;
    }

    public static ListUsersResultJsonUnmarshaller a() {
        if (a == null) {
            a = new ListUsersResultJsonUnmarshaller();
        }
        return a;
    }
}
