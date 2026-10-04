package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.GetCSVHeaderResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class GetCSVHeaderResultJsonUnmarshaller implements Unmarshaller<GetCSVHeaderResult, JsonUnmarshallerContext> {
    private static GetCSVHeaderResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public GetCSVHeaderResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        GetCSVHeaderResult getCSVHeaderResult = new GetCSVHeaderResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("UserPoolId")) {
                getCSVHeaderResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("CSVHeader")) {
                getCSVHeaderResult.a(new ListUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return getCSVHeaderResult;
    }

    public static GetCSVHeaderResultJsonUnmarshaller a() {
        if (a == null) {
            a = new GetCSVHeaderResultJsonUnmarshaller();
        }
        return a;
    }
}
