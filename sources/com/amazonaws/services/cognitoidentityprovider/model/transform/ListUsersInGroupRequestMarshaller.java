package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.ListUsersInGroupRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class ListUsersInGroupRequestMarshaller implements Marshaller<Request<ListUsersInGroupRequest>, ListUsersInGroupRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<ListUsersInGroupRequest> a(ListUsersInGroupRequest listUsersInGroupRequest) {
        if (listUsersInGroupRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(ListUsersInGroupRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(listUsersInGroupRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.ListUsersInGroup");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (listUsersInGroupRequest.h() != null) {
                String strH = listUsersInGroupRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (listUsersInGroupRequest.i() != null) {
                String strI = listUsersInGroupRequest.i();
                awsJsonWriterA.a("GroupName");
                awsJsonWriterA.b(strI);
            }
            if (listUsersInGroupRequest.j() != null) {
                Integer numJ = listUsersInGroupRequest.j();
                awsJsonWriterA.a("Limit");
                awsJsonWriterA.a(numJ);
            }
            if (listUsersInGroupRequest.k() != null) {
                String strK = listUsersInGroupRequest.k();
                awsJsonWriterA.a("NextToken");
                awsJsonWriterA.b(strK);
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
