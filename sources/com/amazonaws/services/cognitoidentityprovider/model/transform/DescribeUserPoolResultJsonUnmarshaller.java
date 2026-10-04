package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.DescribeUserPoolResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class DescribeUserPoolResultJsonUnmarshaller implements Unmarshaller<DescribeUserPoolResult, JsonUnmarshallerContext> {
    private static DescribeUserPoolResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public DescribeUserPoolResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        DescribeUserPoolResult describeUserPoolResult = new DescribeUserPoolResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("UserPool")) {
                describeUserPoolResult.a(UserPoolTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return describeUserPoolResult;
    }

    public static DescribeUserPoolResultJsonUnmarshaller a() {
        if (a == null) {
            a = new DescribeUserPoolResultJsonUnmarshaller();
        }
        return a;
    }
}
