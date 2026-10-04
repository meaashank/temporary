package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.LookupDeveloperIdentityResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class LookupDeveloperIdentityResultJsonUnmarshaller implements Unmarshaller<LookupDeveloperIdentityResult, JsonUnmarshallerContext> {
    private static LookupDeveloperIdentityResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public LookupDeveloperIdentityResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        LookupDeveloperIdentityResult lookupDeveloperIdentityResult = new LookupDeveloperIdentityResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("IdentityId")) {
                lookupDeveloperIdentityResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else if (strG.equals("DeveloperUserIdentifierList")) {
                lookupDeveloperIdentityResult.a(new ListUnmarshaller(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("NextToken")) {
                lookupDeveloperIdentityResult.c(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return lookupDeveloperIdentityResult;
    }

    public static LookupDeveloperIdentityResultJsonUnmarshaller a() {
        if (a == null) {
            a = new LookupDeveloperIdentityResultJsonUnmarshaller();
        }
        return a;
    }
}
