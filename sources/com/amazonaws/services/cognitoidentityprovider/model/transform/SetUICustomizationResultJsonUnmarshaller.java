package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.SetUICustomizationResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class SetUICustomizationResultJsonUnmarshaller implements Unmarshaller<SetUICustomizationResult, JsonUnmarshallerContext> {
    private static SetUICustomizationResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public SetUICustomizationResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        SetUICustomizationResult setUICustomizationResult = new SetUICustomizationResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("UICustomization")) {
                setUICustomizationResult.a(UICustomizationTypeJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return setUICustomizationResult;
    }

    public static SetUICustomizationResultJsonUnmarshaller a() {
        if (a == null) {
            a = new SetUICustomizationResultJsonUnmarshaller();
        }
        return a;
    }
}
