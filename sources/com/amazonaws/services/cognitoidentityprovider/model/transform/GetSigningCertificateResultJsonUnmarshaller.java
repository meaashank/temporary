package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.GetSigningCertificateResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class GetSigningCertificateResultJsonUnmarshaller implements Unmarshaller<GetSigningCertificateResult, JsonUnmarshallerContext> {
    private static GetSigningCertificateResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public GetSigningCertificateResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        GetSigningCertificateResult getSigningCertificateResult = new GetSigningCertificateResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            if (awsJsonReaderA.g().equals("Certificate")) {
                getSigningCertificateResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return getSigningCertificateResult;
    }

    public static GetSigningCertificateResultJsonUnmarshaller a() {
        if (a == null) {
            a = new GetSigningCertificateResultJsonUnmarshaller();
        }
        return a;
    }
}
