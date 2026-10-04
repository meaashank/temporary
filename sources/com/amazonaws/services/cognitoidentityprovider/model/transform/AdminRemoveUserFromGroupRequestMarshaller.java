package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AdminRemoveUserFromGroupRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class AdminRemoveUserFromGroupRequestMarshaller implements Marshaller<Request<AdminRemoveUserFromGroupRequest>, AdminRemoveUserFromGroupRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<AdminRemoveUserFromGroupRequest> a(AdminRemoveUserFromGroupRequest adminRemoveUserFromGroupRequest) {
        if (adminRemoveUserFromGroupRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(AdminRemoveUserFromGroupRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(adminRemoveUserFromGroupRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.AdminRemoveUserFromGroup");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (adminRemoveUserFromGroupRequest.h() != null) {
                String strH = adminRemoveUserFromGroupRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (adminRemoveUserFromGroupRequest.i() != null) {
                String strI = adminRemoveUserFromGroupRequest.i();
                awsJsonWriterA.a("Username");
                awsJsonWriterA.b(strI);
            }
            if (adminRemoveUserFromGroupRequest.j() != null) {
                String strJ = adminRemoveUserFromGroupRequest.j();
                awsJsonWriterA.a("GroupName");
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
