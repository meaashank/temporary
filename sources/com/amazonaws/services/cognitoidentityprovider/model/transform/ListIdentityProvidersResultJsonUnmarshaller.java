package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ListIdentityProvidersResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class ListIdentityProvidersResultJsonUnmarshaller implements Unmarshaller<ListIdentityProvidersResult, JsonUnmarshallerContext> {
    private static ListIdentityProvidersResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public ListIdentityProvidersResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        ListIdentityProvidersResult listIdentityProvidersResult = new ListIdentityProvidersResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("Providers")) {
                listIdentityProvidersResult.a(new ListUnmarshaller(ProviderDescriptionJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("NextToken")) {
                listIdentityProvidersResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return listIdentityProvidersResult;
    }

    public static ListIdentityProvidersResultJsonUnmarshaller a() {
        if (a == null) {
            a = new ListIdentityProvidersResultJsonUnmarshaller();
        }
        return a;
    }
}
