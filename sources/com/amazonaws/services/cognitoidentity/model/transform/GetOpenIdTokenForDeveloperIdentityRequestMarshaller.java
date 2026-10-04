package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.GetOpenIdTokenForDeveloperIdentityRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class GetOpenIdTokenForDeveloperIdentityRequestMarshaller implements Marshaller<Request<GetOpenIdTokenForDeveloperIdentityRequest>, GetOpenIdTokenForDeveloperIdentityRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<GetOpenIdTokenForDeveloperIdentityRequest> a(GetOpenIdTokenForDeveloperIdentityRequest getOpenIdTokenForDeveloperIdentityRequest) {
        if (getOpenIdTokenForDeveloperIdentityRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(GetOpenIdTokenForDeveloperIdentityRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(getOpenIdTokenForDeveloperIdentityRequest, "AmazonCognitoIdentity");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityService.GetOpenIdTokenForDeveloperIdentity");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (getOpenIdTokenForDeveloperIdentityRequest.h() != null) {
                String strH = getOpenIdTokenForDeveloperIdentityRequest.h();
                awsJsonWriterA.a("IdentityPoolId");
                awsJsonWriterA.b(strH);
            }
            if (getOpenIdTokenForDeveloperIdentityRequest.i() != null) {
                String strI = getOpenIdTokenForDeveloperIdentityRequest.i();
                awsJsonWriterA.a("IdentityId");
                awsJsonWriterA.b(strI);
            }
            if (getOpenIdTokenForDeveloperIdentityRequest.j() != null) {
                Map<String, String> mapJ = getOpenIdTokenForDeveloperIdentityRequest.j();
                awsJsonWriterA.a("Logins");
                awsJsonWriterA.c();
                for (Map.Entry<String, String> entry : mapJ.entrySet()) {
                    String value = entry.getValue();
                    if (value != null) {
                        awsJsonWriterA.a(entry.getKey());
                        awsJsonWriterA.b(value);
                    }
                }
                awsJsonWriterA.d();
            }
            if (getOpenIdTokenForDeveloperIdentityRequest.l() != null) {
                Long l = getOpenIdTokenForDeveloperIdentityRequest.l();
                awsJsonWriterA.a("TokenDuration");
                awsJsonWriterA.a(l);
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
