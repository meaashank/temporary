package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AdminListGroupsForUserRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class AdminListGroupsForUserRequestMarshaller implements Marshaller<Request<AdminListGroupsForUserRequest>, AdminListGroupsForUserRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<AdminListGroupsForUserRequest> a(AdminListGroupsForUserRequest adminListGroupsForUserRequest) {
        if (adminListGroupsForUserRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(AdminListGroupsForUserRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(adminListGroupsForUserRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.AdminListGroupsForUser");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (adminListGroupsForUserRequest.h() != null) {
                String strH = adminListGroupsForUserRequest.h();
                awsJsonWriterA.a("Username");
                awsJsonWriterA.b(strH);
            }
            if (adminListGroupsForUserRequest.i() != null) {
                String strI = adminListGroupsForUserRequest.i();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strI);
            }
            if (adminListGroupsForUserRequest.j() != null) {
                Integer numJ = adminListGroupsForUserRequest.j();
                awsJsonWriterA.a("Limit");
                awsJsonWriterA.a(numJ);
            }
            if (adminListGroupsForUserRequest.k() != null) {
                String strK = adminListGroupsForUserRequest.k();
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
