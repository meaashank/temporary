package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.CreateUserPoolDomainRequest;
import com.amazonaws.services.cognitoidentityprovider.model.CustomDomainConfigType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class CreateUserPoolDomainRequestMarshaller implements Marshaller<Request<CreateUserPoolDomainRequest>, CreateUserPoolDomainRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<CreateUserPoolDomainRequest> a(CreateUserPoolDomainRequest createUserPoolDomainRequest) {
        if (createUserPoolDomainRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(CreateUserPoolDomainRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(createUserPoolDomainRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.CreateUserPoolDomain");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (createUserPoolDomainRequest.h() != null) {
                String strH = createUserPoolDomainRequest.h();
                awsJsonWriterA.a("Domain");
                awsJsonWriterA.b(strH);
            }
            if (createUserPoolDomainRequest.i() != null) {
                String strI = createUserPoolDomainRequest.i();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strI);
            }
            if (createUserPoolDomainRequest.j() != null) {
                CustomDomainConfigType customDomainConfigTypeJ = createUserPoolDomainRequest.j();
                awsJsonWriterA.a("CustomDomainConfig");
                CustomDomainConfigTypeJsonMarshaller.a().a(customDomainConfigTypeJ, awsJsonWriterA);
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
