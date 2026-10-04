package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.ListUserPoolClientsRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class ListUserPoolClientsRequestMarshaller implements Marshaller<Request<ListUserPoolClientsRequest>, ListUserPoolClientsRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<ListUserPoolClientsRequest> a(ListUserPoolClientsRequest listUserPoolClientsRequest) {
        if (listUserPoolClientsRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(ListUserPoolClientsRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(listUserPoolClientsRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.ListUserPoolClients");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (listUserPoolClientsRequest.h() != null) {
                String strH = listUserPoolClientsRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (listUserPoolClientsRequest.i() != null) {
                Integer numI = listUserPoolClientsRequest.i();
                awsJsonWriterA.a("MaxResults");
                awsJsonWriterA.a(numI);
            }
            if (listUserPoolClientsRequest.j() != null) {
                String strJ = listUserPoolClientsRequest.j();
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
