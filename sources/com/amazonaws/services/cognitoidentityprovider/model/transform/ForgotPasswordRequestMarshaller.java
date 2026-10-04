package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsMetadataType;
import com.amazonaws.services.cognitoidentityprovider.model.ForgotPasswordRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UserContextDataType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class ForgotPasswordRequestMarshaller implements Marshaller<Request<ForgotPasswordRequest>, ForgotPasswordRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<ForgotPasswordRequest> a(ForgotPasswordRequest forgotPasswordRequest) {
        if (forgotPasswordRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(ForgotPasswordRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(forgotPasswordRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.ForgotPassword");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (forgotPasswordRequest.h() != null) {
                String strH = forgotPasswordRequest.h();
                awsJsonWriterA.a("ClientId");
                awsJsonWriterA.b(strH);
            }
            if (forgotPasswordRequest.i() != null) {
                String strI = forgotPasswordRequest.i();
                awsJsonWriterA.a("SecretHash");
                awsJsonWriterA.b(strI);
            }
            if (forgotPasswordRequest.j() != null) {
                UserContextDataType userContextDataTypeJ = forgotPasswordRequest.j();
                awsJsonWriterA.a("UserContextData");
                UserContextDataTypeJsonMarshaller.a().a(userContextDataTypeJ, awsJsonWriterA);
            }
            if (forgotPasswordRequest.k() != null) {
                String strK = forgotPasswordRequest.k();
                awsJsonWriterA.a("Username");
                awsJsonWriterA.b(strK);
            }
            if (forgotPasswordRequest.l() != null) {
                AnalyticsMetadataType analyticsMetadataTypeL = forgotPasswordRequest.l();
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
