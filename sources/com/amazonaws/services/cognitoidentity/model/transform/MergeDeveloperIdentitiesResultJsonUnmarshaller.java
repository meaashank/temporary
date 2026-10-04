package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.services.cognitoidentity.model.MergeDeveloperIdentitiesResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class MergeDeveloperIdentitiesResultJsonUnmarshaller implements Unmarshaller<MergeDeveloperIdentitiesResult, JsonUnmarshallerContext> {
    private static MergeDeveloperIdentitiesResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public MergeDeveloperIdentitiesResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        MergeDeveloperIdentitiesResult mergeDeveloperIdentitiesResult = new MergeDeveloperIdentitiesResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("IdentityId")) {
                mergeDeveloperIdentitiesResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return mergeDeveloperIdentitiesResult;
    }

    public static MergeDeveloperIdentitiesResultJsonUnmarshaller a() {
        if (a == null) {
            a = new MergeDeveloperIdentitiesResultJsonUnmarshaller();
        }
        return a;
    }
}
