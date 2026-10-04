package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.DescribeIdentityProviderResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class DescribeIdentityProviderResultJsonUnmarshaller implements Unmarshaller<DescribeIdentityProviderResult, JsonUnmarshallerContext> {
    private static DescribeIdentityProviderResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public DescribeIdentityProviderResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        DescribeIdentityProviderResult describeIdentityProviderResult = new DescribeIdentityProviderResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("IdentityProvider")) {
                describeIdentityProviderResult.a(IdentityProviderTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return describeIdentityProviderResult;
    }

    public static DescribeIdentityProviderResultJsonUnmarshaller a() {
        if (a == null) {
            a = new DescribeIdentityProviderResultJsonUnmarshaller();
        }
        return a;
    }
}
