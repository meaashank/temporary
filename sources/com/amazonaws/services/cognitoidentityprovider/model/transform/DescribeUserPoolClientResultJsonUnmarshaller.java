package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.DescribeUserPoolClientResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class DescribeUserPoolClientResultJsonUnmarshaller implements Unmarshaller<DescribeUserPoolClientResult, JsonUnmarshallerContext> {
    private static DescribeUserPoolClientResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public DescribeUserPoolClientResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        DescribeUserPoolClientResult describeUserPoolClientResult = new DescribeUserPoolClientResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("UserPoolClient")) {
                describeUserPoolClientResult.a(UserPoolClientTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return describeUserPoolClientResult;
    }

    public static DescribeUserPoolClientResultJsonUnmarshaller a() {
        if (a == null) {
            a = new DescribeUserPoolClientResultJsonUnmarshaller();
        }
        return a;
    }
}
