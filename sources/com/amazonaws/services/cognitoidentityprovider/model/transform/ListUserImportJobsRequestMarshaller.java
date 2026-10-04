package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.ListUserImportJobsRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class ListUserImportJobsRequestMarshaller implements Marshaller<Request<ListUserImportJobsRequest>, ListUserImportJobsRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<ListUserImportJobsRequest> a(ListUserImportJobsRequest listUserImportJobsRequest) {
        if (listUserImportJobsRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(ListUserImportJobsRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(listUserImportJobsRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.ListUserImportJobs");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (listUserImportJobsRequest.h() != null) {
                String strH = listUserImportJobsRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (listUserImportJobsRequest.i() != null) {
                Integer numI = listUserImportJobsRequest.i();
                awsJsonWriterA.a("MaxResults");
                awsJsonWriterA.a(numI);
            }
            if (listUserImportJobsRequest.j() != null) {
                String strJ = listUserImportJobsRequest.j();
                awsJsonWriterA.a("PaginationToken");
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
