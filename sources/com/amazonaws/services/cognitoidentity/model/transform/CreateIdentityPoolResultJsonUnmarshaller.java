package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.CreateIdentityPoolResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.MapUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class CreateIdentityPoolResultJsonUnmarshaller implements Unmarshaller<CreateIdentityPoolResult, JsonUnmarshallerContext> {
    private static CreateIdentityPoolResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public CreateIdentityPoolResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        CreateIdentityPoolResult createIdentityPoolResult = new CreateIdentityPoolResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("IdentityPoolId")) {
                createIdentityPoolResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("IdentityPoolName")) {
                createIdentityPoolResult.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("AllowUnauthenticatedIdentities")) {
                createIdentityPoolResult.a(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("SupportedLoginProviders")) {
                createIdentityPoolResult.a(new MapUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("DeveloperProviderName")) {
                createIdentityPoolResult.e(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("OpenIdConnectProviderARNs")) {
                createIdentityPoolResult.a(new ListUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("CognitoIdentityProviders")) {
                createIdentityPoolResult.c(new ListUnmarshaller(CognitoIdentityProviderJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("SamlProviderARNs")) {
                createIdentityPoolResult.e(new ListUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("IdentityPoolTags")) {
                createIdentityPoolResult.c(new MapUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return createIdentityPoolResult;
    }

    public static CreateIdentityPoolResultJsonUnmarshaller a() {
        if (a == null) {
            a = new CreateIdentityPoolResultJsonUnmarshaller();
        }
        return a;
    }
}
