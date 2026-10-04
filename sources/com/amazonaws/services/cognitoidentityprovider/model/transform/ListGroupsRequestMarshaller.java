package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.ListGroupsRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class ListGroupsRequestMarshaller implements Marshaller<Request<ListGroupsRequest>, ListGroupsRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<ListGroupsRequest> a(ListGroupsRequest listGroupsRequest) {
        if (listGroupsRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(ListGroupsRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(listGroupsRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.ListGroups");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (listGroupsRequest.h() != null) {
                String strH = listGroupsRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (listGroupsRequest.i() != null) {
                Integer numI = listGroupsRequest.i();
                awsJsonWriterA.a("Limit");
                awsJsonWriterA.a(numI);
            }
            if (listGroupsRequest.j() != null) {
                String strJ = listGroupsRequest.j();
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
