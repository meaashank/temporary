package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.CustomDomainConfigType;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateUserPoolDomainRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class UpdateUserPoolDomainRequestMarshaller implements Marshaller<Request<UpdateUserPoolDomainRequest>, UpdateUserPoolDomainRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<UpdateUserPoolDomainRequest> a(UpdateUserPoolDomainRequest updateUserPoolDomainRequest) {
        if (updateUserPoolDomainRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(UpdateUserPoolDomainRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(updateUserPoolDomainRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.UpdateUserPoolDomain");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (updateUserPoolDomainRequest.h() != null) {
                String strH = updateUserPoolDomainRequest.h();
                awsJsonWriterA.a("Domain");
                awsJsonWriterA.b(strH);
            }
            if (updateUserPoolDomainRequest.i() != null) {
                String strI = updateUserPoolDomainRequest.i();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strI);
            }
            if (updateUserPoolDomainRequest.j() != null) {
                CustomDomainConfigType customDomainConfigTypeJ = updateUserPoolDomainRequest.j();
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
