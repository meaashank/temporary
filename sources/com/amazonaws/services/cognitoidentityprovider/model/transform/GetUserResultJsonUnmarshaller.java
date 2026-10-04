package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.GetUserResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class GetUserResultJsonUnmarshaller implements Unmarshaller<GetUserResult, JsonUnmarshallerContext> {
    private static GetUserResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public GetUserResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        GetUserResult getUserResult = new GetUserResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("Username")) {
                getUserResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("UserAttributes")) {
                getUserResult.a(new ListUnmarshaller(AttributeTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("MFAOptions")) {
                getUserResult.c(new ListUnmarshaller(MFAOptionTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("PreferredMfaSetting")) {
                getUserResult.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("UserMFASettingList")) {
                getUserResult.e(new ListUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return getUserResult;
    }

    public static GetUserResultJsonUnmarshaller a() {
        if (a == null) {
            a = new GetUserResultJsonUnmarshaller();
        }
        return a;
    }
}
