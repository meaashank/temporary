package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsMetadataType;
import com.amazonaws.services.cognitoidentityprovider.model.ResendConfirmationCodeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UserContextDataType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class ResendConfirmationCodeRequestMarshaller implements Marshaller<Request<ResendConfirmationCodeRequest>, ResendConfirmationCodeRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<ResendConfirmationCodeRequest> a(ResendConfirmationCodeRequest resendConfirmationCodeRequest) {
        if (resendConfirmationCodeRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(ResendConfirmationCodeRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(resendConfirmationCodeRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.ResendConfirmationCode");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (resendConfirmationCodeRequest.h() != null) {
                String strH = resendConfirmationCodeRequest.h();
                awsJsonWriterA.a("ClientId");
                awsJsonWriterA.b(strH);
            }
            if (resendConfirmationCodeRequest.i() != null) {
                String strI = resendConfirmationCodeRequest.i();
                awsJsonWriterA.a("SecretHash");
                awsJsonWriterA.b(strI);
            }
            if (resendConfirmationCodeRequest.j() != null) {
                UserContextDataType userContextDataTypeJ = resendConfirmationCodeRequest.j();
                awsJsonWriterA.a("UserContextData");
                UserContextDataTypeJsonMarshaller.a().a(userContextDataTypeJ, awsJsonWriterA);
            }
            if (resendConfirmationCodeRequest.k() != null) {
                String strK = resendConfirmationCodeRequest.k();
                awsJsonWriterA.a("Username");
                awsJsonWriterA.b(strK);
            }
            if (resendConfirmationCodeRequest.l() != null) {
                AnalyticsMetadataType analyticsMetadataTypeL = resendConfirmationCodeRequest.l();
                awsJsonWriterA.a("AnalyticsMetadata");
                AnalyticsMetadataTypeJsonMarshaller.a().a(analyticsMetadataTypeL, awsJsonWriterA);
            }
            awsJsonWriterA.d();
            awsJsonWriterA.g();
            String string = stringWriter.toString();
            byte[] bytes = string.getBytes(StringUtils.a);
            defaultRequest.a(new StringInputStream(string));
            defaultRequest.a("Content-Length", Integer.toString(bytes.length));
            if (!defaultRequest.b().containsKey("Content-Type")) {
                defaultRequest.a("Content-Type", "application/x-amz-json-1.1");
            }
            return defaultRequest;
        } catch (Throwable th) {
            throw new AmazonClientException("Unable to marshall request to JSON: " + th.getMessage(), th);
        }
    }
}
