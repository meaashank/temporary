package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.CreateGroupRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class CreateGroupRequestMarshaller implements Marshaller<Request<CreateGroupRequest>, CreateGroupRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<CreateGroupRequest> a(CreateGroupRequest createGroupRequest) {
        if (createGroupRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(CreateGroupRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(createGroupRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.CreateGroup");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (createGroupRequest.h() != null) {
                String strH = createGroupRequest.h();
                awsJsonWriterA.a("GroupName");
                awsJsonWriterA.b(strH);
            }
            if (createGroupRequest.i() != null) {
                String strI = createGroupRequest.i();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strI);
            }
            if (createGroupRequest.j() != null) {
                String strJ = createGroupRequest.j();
                awsJsonWriterA.a("Description");
                awsJsonWriterA.b(strJ);
            }
            if (createGroupRequest.k() != null) {
                String strK = createGroupRequest.k();
                awsJsonWriterA.a("RoleArn");
                awsJsonWriterA.b(strK);
            }
            if (createGroupRequest.l() != null) {
                Integer numL = createGroupRequest.l();
                awsJsonWriterA.a("Precedence");
                awsJsonWriterA.a(numL);
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
