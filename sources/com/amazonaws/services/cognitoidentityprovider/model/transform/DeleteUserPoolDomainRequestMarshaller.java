package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.DeleteUserPoolDomainRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class DeleteUserPoolDomainRequestMarshaller implements Marshaller<Request<DeleteUserPoolDomainRequest>, DeleteUserPoolDomainRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<DeleteUserPoolDomainRequest> a(DeleteUserPoolDomainRequest deleteUserPoolDomainRequest) {
        if (deleteUserPoolDomainRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(DeleteUserPoolDomainRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(deleteUserPoolDomainRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.DeleteUserPoolDomain");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (deleteUserPoolDomainRequest.h() != null) {
                String strH = deleteUserPoolDomainRequest.h();
                awsJsonWriterA.a("Domain");
                awsJsonWriterA.b(strH);
            }
            if (deleteUserPoolDomainRequest.i() != null) {
                String strI = deleteUserPoolDomainRequest.i();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strI);
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
