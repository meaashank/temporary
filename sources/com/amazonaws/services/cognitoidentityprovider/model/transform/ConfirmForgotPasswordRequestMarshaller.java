package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsMetadataType;
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmForgotPasswordRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UserContextDataType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class ConfirmForgotPasswordRequestMarshaller implements Marshaller<Request<ConfirmForgotPasswordRequest>, ConfirmForgotPasswordRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<ConfirmForgotPasswordRequest> a(ConfirmForgotPasswordRequest confirmForgotPasswordRequest) {
        if (confirmForgotPasswordRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(ConfirmForgotPasswordRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(confirmForgotPasswordRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.ConfirmForgotPassword");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (confirmForgotPasswordRequest.h() != null) {
                String strH = confirmForgotPasswordRequest.h();
                awsJsonWriterA.a("ClientId");
                awsJsonWriterA.b(strH);
            }
            if (confirmForgotPasswordRequest.i() != null) {
                String strI = confirmForgotPasswordRequest.i();
                awsJsonWriterA.a("SecretHash");
                awsJsonWriterA.b(strI);
            }
            if (confirmForgotPasswordRequest.j() != null) {
                String strJ = confirmForgotPasswordRequest.j();
                awsJsonWriterA.a("Username");
                awsJsonWriterA.b(strJ);
            }
            if (confirmForgotPasswordRequest.k() != null) {
                String strK = confirmForgotPasswordRequest.k();
                awsJsonWriterA.a("ConfirmationCode");
                awsJsonWriterA.b(strK);
            }
            if (confirmForgotPasswordRequest.l() != null) {
                String strL = confirmForgotPasswordRequest.l();
                awsJsonWriterA.a("Password");
                awsJsonWriterA.b(strL);
            }
            if (confirmForgotPasswordRequest.m() != null) {
                AnalyticsMetadataType analyticsMetadataTypeM = confirmForgotPasswordRequest.m();
                awsJsonWriterA.a("AnalyticsMetadata");
                AnalyticsMetadataTypeJsonMarshaller.a().a(analyticsMetadataTypeM, awsJsonWriterA);
            }
            if (confirmForgotPasswordRequest.n() != null) {
                UserContextDataType userContextDataTypeN = confirmForgotPasswordRequest.n();
                awsJsonWriterA.a("UserContextData");
                UserContextDataTypeJsonMarshaller.a().a(userContextDataTypeN, awsJsonWriterA);
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
