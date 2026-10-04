package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.ListIdentityPoolsResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class ListIdentityPoolsResultJsonUnmarshaller implements Unmarshaller<ListIdentityPoolsResult, JsonUnmarshallerContext> {
    private static ListIdentityPoolsResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public ListIdentityPoolsResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        ListIdentityPoolsResult listIdentityPoolsResult = new ListIdentityPoolsResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("IdentityPools")) {
                listIdentityPoolsResult.a(new ListUnmarshaller(IdentityPoolShortDescriptionJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("NextToken")) {
                listIdentityPoolsResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return listIdentityPoolsResult;
    }

    public static ListIdentityPoolsResultJsonUnmarshaller a() {
        if (a == null) {
            a = new ListIdentityPoolsResultJsonUnmarshaller();
        }
        return a;
    }
}
