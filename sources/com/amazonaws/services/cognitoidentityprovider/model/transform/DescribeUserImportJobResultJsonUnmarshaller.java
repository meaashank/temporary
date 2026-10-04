package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.DescribeUserImportJobResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class DescribeUserImportJobResultJsonUnmarshaller implements Unmarshaller<DescribeUserImportJobResult, JsonUnmarshallerContext> {
    private static DescribeUserImportJobResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public DescribeUserImportJobResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        DescribeUserImportJobResult describeUserImportJobResult = new DescribeUserImportJobResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("UserImportJob")) {
                describeUserImportJobResult.a(UserImportJobTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return describeUserImportJobResult;
    }

    public static DescribeUserImportJobResultJsonUnmarshaller a() {
        if (a == null) {
            a = new DescribeUserImportJobResultJsonUnmarshaller();
        }
        return a;
    }
}
