package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.DeleteIdentityProviderRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class DeleteIdentityProviderRequestMarshaller implements Marshaller<Request<DeleteIdentityProviderRequest>, DeleteIdentityProviderRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<DeleteIdentityProviderRequest> a(DeleteIdentityProviderRequest deleteIdentityProviderRequest) {
        if (deleteIdentityProviderRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(DeleteIdentityProviderRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(deleteIdentityProviderRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.DeleteIdentityProvider");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (deleteIdentityProviderRequest.h() != null) {
                String strH = deleteIdentityProviderRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (deleteIdentityProviderRequest.i() != null) {
                String strI = deleteIdentityProviderRequest.i();
                awsJsonWriterA.a("ProviderName");
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
