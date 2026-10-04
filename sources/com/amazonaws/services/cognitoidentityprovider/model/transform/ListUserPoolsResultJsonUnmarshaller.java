package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ListUserPoolsResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class ListUserPoolsResultJsonUnmarshaller implements Unmarshaller<ListUserPoolsResult, JsonUnmarshallerContext> {
    private static ListUserPoolsResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public ListUserPoolsResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        ListUserPoolsResult listUserPoolsResult = new ListUserPoolsResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("UserPools")) {
                listUserPoolsResult.a(new ListUnmarshaller(UserPoolDescriptionTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("NextToken")) {
                listUserPoolsResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return listUserPoolsResult;
    }

    public static ListUserPoolsResultJsonUnmarshaller a() {
        if (a == null) {
            a = new ListUserPoolsResultJsonUnmarshaller();
        }
        return a;
    }
}
