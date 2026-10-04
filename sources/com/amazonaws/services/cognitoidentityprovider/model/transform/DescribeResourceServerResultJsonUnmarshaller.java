package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.DescribeResourceServerResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class DescribeResourceServerResultJsonUnmarshaller implements Unmarshaller<DescribeResourceServerResult, JsonUnmarshallerContext> {
    private static DescribeResourceServerResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public DescribeResourceServerResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        DescribeResourceServerResult describeResourceServerResult = new DescribeResourceServerResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("ResourceServer")) {
                describeResourceServerResult.a(ResourceServerTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return describeResourceServerResult;
    }

    public static DescribeResourceServerResultJsonUnmarshaller a() {
        if (a == null) {
            a = new DescribeResourceServerResultJsonUnmarshaller();
        }
        return a;
    }
}
