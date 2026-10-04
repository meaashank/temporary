package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.StopUserImportJobResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class StopUserImportJobResultJsonUnmarshaller implements Unmarshaller<StopUserImportJobResult, JsonUnmarshallerContext> {
    private static StopUserImportJobResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public StopUserImportJobResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        StopUserImportJobResult stopUserImportJobResult = new StopUserImportJobResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("UserImportJob")) {
                stopUserImportJobResult.a(UserImportJobTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return stopUserImportJobResult;
    }

    public static StopUserImportJobResultJsonUnmarshaller a() {
        if (a == null) {
            a = new StopUserImportJobResultJsonUnmarshaller();
        }
        return a;
    }
}
