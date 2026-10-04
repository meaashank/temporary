package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateGroupRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class UpdateGroupRequestMarshaller implements Marshaller<Request<UpdateGroupRequest>, UpdateGroupRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<UpdateGroupRequest> a(UpdateGroupRequest updateGroupRequest) {
        if (updateGroupRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(UpdateGroupRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(updateGroupRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.UpdateGroup");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (updateGroupRequest.h() != null) {
                String strH = updateGroupRequest.h();
                awsJsonWriterA.a("GroupName");
                awsJsonWriterA.b(strH);
            }
            if (updateGroupRequest.i() != null) {
                String strI = updateGroupRequest.i();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strI);
            }
            if (updateGroupRequest.j() != null) {
                String strJ = updateGroupRequest.j();
                awsJsonWriterA.a("Description");
                awsJsonWriterA.b(strJ);
            }
            if (updateGroupRequest.k() != null) {
                String strK = updateGroupRequest.k();
                awsJsonWriterA.a("RoleArn");
                awsJsonWriterA.b(strK);
            }
            if (updateGroupRequest.l() != null) {
                Integer numL = updateGroupRequest.l();
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
