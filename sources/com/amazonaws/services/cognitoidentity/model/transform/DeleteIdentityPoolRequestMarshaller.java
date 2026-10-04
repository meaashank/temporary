package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.DeleteIdentityPoolRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class DeleteIdentityPoolRequestMarshaller implements Marshaller<Request<DeleteIdentityPoolRequest>, DeleteIdentityPoolRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<DeleteIdentityPoolRequest> a(DeleteIdentityPoolRequest deleteIdentityPoolRequest) {
        if (deleteIdentityPoolRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(DeleteIdentityPoolRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(deleteIdentityPoolRequest, "AmazonCognitoIdentity");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityService.DeleteIdentityPool");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (deleteIdentityPoolRequest.h() != null) {
                String strH = deleteIdentityPoolRequest.h();
                awsJsonWriterA.a("IdentityPoolId");
                awsJsonWriterA.b(strH);
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
