package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AdminDisableProviderForUserRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ProviderUserIdentifierType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class AdminDisableProviderForUserRequestMarshaller implements Marshaller<Request<AdminDisableProviderForUserRequest>, AdminDisableProviderForUserRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<AdminDisableProviderForUserRequest> a(AdminDisableProviderForUserRequest adminDisableProviderForUserRequest) {
        if (adminDisableProviderForUserRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(AdminDisableProviderForUserRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(adminDisableProviderForUserRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.AdminDisableProviderForUser");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (adminDisableProviderForUserRequest.h() != null) {
                String strH = adminDisableProviderForUserRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (adminDisableProviderForUserRequest.i() != null) {
                ProviderUserIdentifierType providerUserIdentifierTypeI = adminDisableProviderForUserRequest.i();
                awsJsonWriterA.a("User");
                ProviderUserIdentifierTypeJsonMarshaller.a().a(providerUserIdentifierTypeI, awsJsonWriterA);
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
