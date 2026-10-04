package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.UpdateIdentityPoolResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.MapUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class UpdateIdentityPoolResultJsonUnmarshaller implements Unmarshaller<UpdateIdentityPoolResult, JsonUnmarshallerContext> {
    private static UpdateIdentityPoolResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public UpdateIdentityPoolResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        UpdateIdentityPoolResult updateIdentityPoolResult = new UpdateIdentityPoolResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("IdentityPoolId")) {
                updateIdentityPoolResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("IdentityPoolName")) {
                updateIdentityPoolResult.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("AllowUnauthenticatedIdentities")) {
                updateIdentityPoolResult.a(SimpleTypeJsonUnmarshallers.BooleanJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("SupportedLoginProviders")) {
                updateIdentityPoolResult.a(new MapUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("DeveloperProviderName")) {
                updateIdentityPoolResult.e(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("OpenIdConnectProviderARNs")) {
                updateIdentityPoolResult.a(new ListUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("CognitoIdentityProviders")) {
                updateIdentityPoolResult.c(new ListUnmarshaller(CognitoIdentityProviderJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("SamlProviderARNs")) {
                updateIdentityPoolResult.e(new ListUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("IdentityPoolTags")) {
                updateIdentityPoolResult.c(new MapUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return updateIdentityPoolResult;
    }

    public static UpdateIdentityPoolResultJsonUnmarshaller a() {
        if (a == null) {
            a = new UpdateIdentityPoolResultJsonUnmarshaller();
        }
        return a;
    }
}
