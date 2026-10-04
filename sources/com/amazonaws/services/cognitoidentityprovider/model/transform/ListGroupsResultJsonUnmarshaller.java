package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ListGroupsResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class ListGroupsResultJsonUnmarshaller implements Unmarshaller<ListGroupsResult, JsonUnmarshallerContext> {
    private static ListGroupsResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public ListGroupsResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        ListGroupsResult listGroupsResult = new ListGroupsResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("Groups")) {
                listGroupsResult.a(new ListUnmarshaller(GroupTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("NextToken")) {
                listGroupsResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return listGroupsResult;
    }

    public static ListGroupsResultJsonUnmarshaller a() {
        if (a == null) {
            a = new ListGroupsResultJsonUnmarshaller();
        }
        return a;
    }
}
