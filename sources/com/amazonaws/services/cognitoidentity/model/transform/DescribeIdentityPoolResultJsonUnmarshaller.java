package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.DescribeIdentityPoolResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.MapUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class DescribeIdentityPoolResultJsonUnmarshaller implements Unmarshaller<DescribeIdentityPoolResult, JsonUnmarshallerContext> {
    private static DescribeIdentityPoolResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public DescribeIdentityPoolResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        DescribeIdentityPoolResult describeIdentityPoolResult = new DescribeIdentityPoolResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("IdentityPoolId")) {
                describeIdentityPoolResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("IdentityPoolName")) {
                describeIdentityPoolResult.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("AllowUnauthenticatedIdentities")) {
                describeIdentityPoolResult.a(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("SupportedLoginProviders")) {
                describeIdentityPoolResult.a(new MapUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("DeveloperProviderName")) {
                describeIdentityPoolResult.e(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("OpenIdConnectProviderARNs")) {
                describeIdentityPoolResult.a(new ListUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("CognitoIdentityProviders")) {
                describeIdentityPoolResult.c(new ListUnmarshaller(CognitoIdentityProviderJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("SamlProviderARNs")) {
                describeIdentityPoolResult.e(new ListUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("IdentityPoolTags")) {
                describeIdentityPoolResult.c(new MapUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return describeIdentityPoolResult;
    }

    public static DescribeIdentityPoolResultJsonUnmarshaller a() {
        if (a == null) {
            a = new DescribeIdentityPoolResultJsonUnmarshaller();
        }
        return a;
    }
}
