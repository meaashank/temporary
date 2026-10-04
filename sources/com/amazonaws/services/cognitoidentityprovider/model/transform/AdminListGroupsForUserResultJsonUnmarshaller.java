package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminListGroupsForUserResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class AdminListGroupsForUserResultJsonUnmarshaller implements Unmarshaller<AdminListGroupsForUserResult, JsonUnmarshallerContext> {
    private static AdminListGroupsForUserResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminListGroupsForUserResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AdminListGroupsForUserResult adminListGroupsForUserResult = new AdminListGroupsForUserResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("Groups")) {
                adminListGroupsForUserResult.a(new ListUnmarshaller(GroupTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("NextToken")) {
                adminListGroupsForUserResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return adminListGroupsForUserResult;
    }

    public static AdminListGroupsForUserResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminListGroupsForUserResultJsonUnmarshaller();
        }
        return a;
    }
}
