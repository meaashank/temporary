package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.StartUserImportJobResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class StartUserImportJobResultJsonUnmarshaller implements Unmarshaller<StartUserImportJobResult, JsonUnmarshallerContext> {
    private static StartUserImportJobResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public StartUserImportJobResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        StartUserImportJobResult startUserImportJobResult = new StartUserImportJobResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("UserImportJob")) {
                startUserImportJobResult.a(UserImportJobTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return startUserImportJobResult;
    }

    public static StartUserImportJobResultJsonUnmarshaller a() {
        if (a == null) {
            a = new StartUserImportJobResultJsonUnmarshaller();
        }
        return a;
    }
}
