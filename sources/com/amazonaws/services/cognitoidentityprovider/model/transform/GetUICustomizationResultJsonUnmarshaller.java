package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.GetUICustomizationResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class GetUICustomizationResultJsonUnmarshaller implements Unmarshaller<GetUICustomizationResult, JsonUnmarshallerContext> {
    private static GetUICustomizationResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public GetUICustomizationResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        GetUICustomizationResult getUICustomizationResult = new GetUICustomizationResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("UICustomization")) {
                getUICustomizationResult.a(UICustomizationTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return getUICustomizationResult;
    }

    public static GetUICustomizationResultJsonUnmarshaller a() {
        if (a == null) {
            a = new GetUICustomizationResultJsonUnmarshaller();
        }
        return a;
    }
}
