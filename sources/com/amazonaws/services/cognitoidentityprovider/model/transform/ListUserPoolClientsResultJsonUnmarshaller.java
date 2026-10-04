package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ListUserPoolClientsResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class ListUserPoolClientsResultJsonUnmarshaller implements Unmarshaller<ListUserPoolClientsResult, JsonUnmarshallerContext> {
    private static ListUserPoolClientsResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public ListUserPoolClientsResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        ListUserPoolClientsResult listUserPoolClientsResult = new ListUserPoolClientsResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("UserPoolClients")) {
                listUserPoolClientsResult.a(new ListUnmarshaller(UserPoolClientDescriptionJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("NextToken")) {
                listUserPoolClientsResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return listUserPoolClientsResult;
    }

    public static ListUserPoolClientsResultJsonUnmarshaller a() {
        if (a == null) {
            a = new ListUserPoolClientsResultJsonUnmarshaller();
        }
        return a;
    }
}
