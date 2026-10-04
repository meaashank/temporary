package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.GetCredentialsForIdentityRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class GetCredentialsForIdentityRequestMarshaller implements Marshaller<Request<GetCredentialsForIdentityRequest>, GetCredentialsForIdentityRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<GetCredentialsForIdentityRequest> a(GetCredentialsForIdentityRequest getCredentialsForIdentityRequest) {
        if (getCredentialsForIdentityRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(GetCredentialsForIdentityRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(getCredentialsForIdentityRequest, "AmazonCognitoIdentity");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityService.GetCredentialsForIdentity");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (getCredentialsForIdentityRequest.h() != null) {
                String strH = getCredentialsForIdentityRequest.h();
                awsJsonWriterA.a("IdentityId");
                awsJsonWriterA.b(strH);
            }
            if (getCredentialsForIdentityRequest.i() != null) {
                Map<String, String> mapI = getCredentialsForIdentityRequest.i();
                awsJsonWriterA.a("Logins");
                awsJsonWriterA.c();
                for (Map.Entry<String, String> entry : mapI.entrySet()) {
                    String value = entry.getValue();
                    if (value != null) {
                        awsJsonWriterA.a(entry.getKey());
                        awsJsonWriterA.b(value);
                    }
                }
                awsJsonWriterA.d();
            }
            if (getCredentialsForIdentityRequest.k() != null) {
                String strK = getCredentialsForIdentityRequest.k();
                awsJsonWriterA.a("CustomRoleArn");
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
