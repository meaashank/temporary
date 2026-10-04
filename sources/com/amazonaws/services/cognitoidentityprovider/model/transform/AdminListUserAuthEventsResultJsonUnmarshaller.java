package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminListUserAuthEventsResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class AdminListUserAuthEventsResultJsonUnmarshaller implements Unmarshaller<AdminListUserAuthEventsResult, JsonUnmarshallerContext> {
    private static AdminListUserAuthEventsResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminListUserAuthEventsResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AdminListUserAuthEventsResult adminListUserAuthEventsResult = new AdminListUserAuthEventsResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("AuthEvents")) {
                adminListUserAuthEventsResult.a(new ListUnmarshaller(AuthEventTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("NextToken")) {
                adminListUserAuthEventsResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return adminListUserAuthEventsResult;
    }

    public static AdminListUserAuthEventsResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminListUserAuthEventsResultJsonUnmarshaller();
        }
        return a;
    }
}
