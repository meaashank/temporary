package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.MergeDeveloperIdentitiesRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class MergeDeveloperIdentitiesRequestMarshaller implements Marshaller<Request<MergeDeveloperIdentitiesRequest>, MergeDeveloperIdentitiesRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<MergeDeveloperIdentitiesRequest> a(MergeDeveloperIdentitiesRequest mergeDeveloperIdentitiesRequest) {
        if (mergeDeveloperIdentitiesRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(MergeDeveloperIdentitiesRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(mergeDeveloperIdentitiesRequest, "AmazonCognitoIdentity");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityService.MergeDeveloperIdentities");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (mergeDeveloperIdentitiesRequest.h() != null) {
                String strH = mergeDeveloperIdentitiesRequest.h();
                awsJsonWriterA.a("SourceUserIdentifier");
                awsJsonWriterA.b(strH);
            }
            if (mergeDeveloperIdentitiesRequest.i() != null) {
                String strI = mergeDeveloperIdentitiesRequest.i();
                awsJsonWriterA.a("DestinationUserIdentifier");
                awsJsonWriterA.b(strI);
            }
            if (mergeDeveloperIdentitiesRequest.j() != null) {
                String strJ = mergeDeveloperIdentitiesRequest.j();
                awsJsonWriterA.a("DeveloperProviderName");
                awsJsonWriterA.b(strJ);
            }
            if (mergeDeveloperIdentitiesRequest.k() != null) {
                String strK = mergeDeveloperIdentitiesRequest.k();
                awsJsonWriterA.a("IdentityPoolId");
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
