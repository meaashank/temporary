package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.IdentityPoolShortDescription;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
class IdentityPoolShortDescriptionJsonUnmarshaller implements Unmarshaller<IdentityPoolShortDescription, JsonUnmarshallerContext> {
    private static IdentityPoolShortDescriptionJsonUnmarshaller a;

    IdentityPoolShortDescriptionJsonUnmarshaller() {
    }

    @Override // com.amazonaws.transform.Unmarshaller
    public IdentityPoolShortDescription a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        if (!awsJsonReaderA.e()) {
            awsJsonReaderA.j();
            return null;
        }
        IdentityPoolShortDescription identityPoolShortDescription = new IdentityPoolShortDescription();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("IdentityPoolId")) {
                identityPoolShortDescription.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("IdentityPoolName")) {
                identityPoolShortDescription.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return identityPoolShortDescription;
    }

    public static IdentityPoolShortDescriptionJsonUnmarshaller a() {
        if (a == null) {
            a = new IdentityPoolShortDescriptionJsonUnmarshaller();
        }
        return a;
    }
}
