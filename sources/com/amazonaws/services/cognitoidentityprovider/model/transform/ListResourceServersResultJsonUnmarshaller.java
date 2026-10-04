package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ListResourceServersResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class ListResourceServersResultJsonUnmarshaller implements Unmarshaller<ListResourceServersResult, JsonUnmarshallerContext> {
    private static ListResourceServersResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public ListResourceServersResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        ListResourceServersResult listResourceServersResult = new ListResourceServersResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("ResourceServers")) {
                listResourceServersResult.a(new ListUnmarshaller(ResourceServerTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("NextToken")) {
                listResourceServersResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return listResourceServersResult;
    }

    public static ListResourceServersResultJsonUnmarshaller a() {
        if (a == null) {
            a = new ListResourceServersResultJsonUnmarshaller();
        }
        return a;
    }
}
