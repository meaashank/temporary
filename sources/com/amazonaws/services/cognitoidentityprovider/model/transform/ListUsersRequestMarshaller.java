package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.ListUsersRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class ListUsersRequestMarshaller implements Marshaller<Request<ListUsersRequest>, ListUsersRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<ListUsersRequest> a(ListUsersRequest listUsersRequest) {
        if (listUsersRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(ListUsersRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(listUsersRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.ListUsers");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (listUsersRequest.h() != null) {
                String strH = listUsersRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (listUsersRequest.i() != null) {
                List<String> listI = listUsersRequest.i();
                awsJsonWriterA.a("AttributesToGet");
                awsJsonWriterA.a();
                for (String str : listI) {
                    if (str != null) {
                        awsJsonWriterA.b(str);
                    }
                }
                awsJsonWriterA.b();
            }
            if (listUsersRequest.j() != null) {
                Integer numJ = listUsersRequest.j();
                awsJsonWriterA.a("Limit");
                awsJsonWriterA.a(numJ);
            }
            if (listUsersRequest.k() != null) {
                String strK = listUsersRequest.k();
                awsJsonWriterA.a("PaginationToken");
                awsJsonWriterA.b(strK);
            }
            if (listUsersRequest.l() != null) {
                String strL = listUsersRequest.l();
                awsJsonWriterA.a("Filter");
                awsJsonWriterA.b(strL);
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
