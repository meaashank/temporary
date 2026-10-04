package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AdminAddUserToGroupRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class AdminAddUserToGroupRequestMarshaller implements Marshaller<Request<AdminAddUserToGroupRequest>, AdminAddUserToGroupRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<AdminAddUserToGroupRequest> a(AdminAddUserToGroupRequest adminAddUserToGroupRequest) {
        if (adminAddUserToGroupRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(AdminAddUserToGroupRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(adminAddUserToGroupRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.AdminAddUserToGroup");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (adminAddUserToGroupRequest.h() != null) {
                String strH = adminAddUserToGroupRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (adminAddUserToGroupRequest.i() != null) {
                String strI = adminAddUserToGroupRequest.i();
                awsJsonWriterA.a("Username");
                awsJsonWriterA.b(strI);
            }
            if (adminAddUserToGroupRequest.j() != null) {
                String strJ = adminAddUserToGroupRequest.j();
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
