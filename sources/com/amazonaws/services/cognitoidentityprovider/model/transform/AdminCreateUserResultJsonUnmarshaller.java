package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.AdminCreateUserResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class AdminCreateUserResultJsonUnmarshaller implements Unmarshaller<AdminCreateUserResult, JsonUnmarshallerContext> {
    private static AdminCreateUserResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public AdminCreateUserResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AdminCreateUserResult adminCreateUserResult = new AdminCreateUserResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("User")) {
                adminCreateUserResult.a(UserTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return adminCreateUserResult;
    }

    public static AdminCreateUserResultJsonUnmarshaller a() {
        if (a == null) {
            a = new AdminCreateUserResultJsonUnmarshaller();
        }
        return a;
    }
}
