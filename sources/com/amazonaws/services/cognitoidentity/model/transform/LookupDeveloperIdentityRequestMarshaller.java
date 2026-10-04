package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.LookupDeveloperIdentityRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class LookupDeveloperIdentityRequestMarshaller implements Marshaller<Request<LookupDeveloperIdentityRequest>, LookupDeveloperIdentityRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<LookupDeveloperIdentityRequest> a(LookupDeveloperIdentityRequest lookupDeveloperIdentityRequest) {
        if (lookupDeveloperIdentityRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(LookupDeveloperIdentityRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(lookupDeveloperIdentityRequest, "AmazonCognitoIdentity");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityService.LookupDeveloperIdentity");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (lookupDeveloperIdentityRequest.h() != null) {
                String strH = lookupDeveloperIdentityRequest.h();
                awsJsonWriterA.a("IdentityPoolId");
                awsJsonWriterA.b(strH);
            }
            if (lookupDeveloperIdentityRequest.i() != null) {
                String strI = lookupDeveloperIdentityRequest.i();
                awsJsonWriterA.a("IdentityId");
                awsJsonWriterA.b(strI);
            }
            if (lookupDeveloperIdentityRequest.j() != null) {
                String strJ = lookupDeveloperIdentityRequest.j();
                awsJsonWriterA.a("DeveloperUserIdentifier");
                awsJsonWriterA.b(strJ);
            }
            if (lookupDeveloperIdentityRequest.k() != null) {
                Integer numK = lookupDeveloperIdentityRequest.k();
                awsJsonWriterA.a("MaxResults");
                awsJsonWriterA.a(numK);
            }
            if (lookupDeveloperIdentityRequest.l() != null) {
                String strL = lookupDeveloperIdentityRequest.l();
                awsJsonWriterA.a("NextToken");
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
