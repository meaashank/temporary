package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.ListIdentityProvidersRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class ListIdentityProvidersRequestMarshaller implements Marshaller<Request<ListIdentityProvidersRequest>, ListIdentityProvidersRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<ListIdentityProvidersRequest> a(ListIdentityProvidersRequest listIdentityProvidersRequest) {
        if (listIdentityProvidersRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(ListIdentityProvidersRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(listIdentityProvidersRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.ListIdentityProviders");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (listIdentityProvidersRequest.h() != null) {
                String strH = listIdentityProvidersRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (listIdentityProvidersRequest.i() != null) {
                Integer numI = listIdentityProvidersRequest.i();
                awsJsonWriterA.a("MaxResults");
                awsJsonWriterA.a(numI);
            }
            if (listIdentityProvidersRequest.j() != null) {
                String strJ = listIdentityProvidersRequest.j();
                awsJsonWriterA.a("NextToken");
                awsJsonWriterA.b(strJ);
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
