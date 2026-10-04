package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsMetadataType;
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmSignUpRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UserContextDataType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class ConfirmSignUpRequestMarshaller implements Marshaller<Request<ConfirmSignUpRequest>, ConfirmSignUpRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<ConfirmSignUpRequest> a(ConfirmSignUpRequest confirmSignUpRequest) {
        if (confirmSignUpRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(ConfirmSignUpRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(confirmSignUpRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.ConfirmSignUp");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (confirmSignUpRequest.h() != null) {
                String strH = confirmSignUpRequest.h();
                awsJsonWriterA.a("ClientId");
                awsJsonWriterA.b(strH);
            }
            if (confirmSignUpRequest.i() != null) {
                String strI = confirmSignUpRequest.i();
                awsJsonWriterA.a("SecretHash");
                awsJsonWriterA.b(strI);
            }
            if (confirmSignUpRequest.j() != null) {
                String strJ = confirmSignUpRequest.j();
                awsJsonWriterA.a("Username");
                awsJsonWriterA.b(strJ);
            }
            if (confirmSignUpRequest.k() != null) {
                String strK = confirmSignUpRequest.k();
                awsJsonWriterA.a("ConfirmationCode");
                awsJsonWriterA.b(strK);
            }
            if (confirmSignUpRequest.m() != null) {
                Boolean boolM = confirmSignUpRequest.m();
                awsJsonWriterA.a("ForceAliasCreation");
                awsJsonWriterA.a(boolM.booleanValue());
            }
            if (confirmSignUpRequest.n() != null) {
                AnalyticsMetadataType analyticsMetadataTypeN = confirmSignUpRequest.n();
                awsJsonWriterA.a("AnalyticsMetadata");
                AnalyticsMetadataTypeJsonMarshaller.a().a(analyticsMetadataTypeN, awsJsonWriterA);
            }
            if (confirmSignUpRequest.o() != null) {
                UserContextDataType userContextDataTypeO = confirmSignUpRequest.o();
                awsJsonWriterA.a("UserContextData");
                UserContextDataTypeJsonMarshaller.a().a(userContextDataTypeO, awsJsonWriterA);
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
