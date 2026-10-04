package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.DescribeUserPoolDomainResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class DescribeUserPoolDomainResultJsonUnmarshaller implements Unmarshaller<DescribeUserPoolDomainResult, JsonUnmarshallerContext> {
    private static DescribeUserPoolDomainResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public DescribeUserPoolDomainResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        DescribeUserPoolDomainResult describeUserPoolDomainResult = new DescribeUserPoolDomainResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("DomainDescription")) {
                describeUserPoolDomainResult.a(DomainDescriptionTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return describeUserPoolDomainResult;
    }

    public static DescribeUserPoolDomainResultJsonUnmarshaller a() {
        if (a == null) {
            a = new DescribeUserPoolDomainResultJsonUnmarshaller();
        }
        return a;
    }
}
