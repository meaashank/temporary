package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.ListIdentitiesRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class ListIdentitiesRequestMarshaller implements Marshaller<Request<ListIdentitiesRequest>, ListIdentitiesRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<ListIdentitiesRequest> a(ListIdentitiesRequest listIdentitiesRequest) {
        if (listIdentitiesRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(ListIdentitiesRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(listIdentitiesRequest, "AmazonCognitoIdentity");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityService.ListIdentities");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (listIdentitiesRequest.h() != null) {
                String strH = listIdentitiesRequest.h();
                awsJsonWriterA.a("IdentityPoolId");
                awsJsonWriterA.b(strH);
            }
            if (listIdentitiesRequest.i() != null) {
                Integer numI = listIdentitiesRequest.i();
                awsJsonWriterA.a("MaxResults");
                awsJsonWriterA.a(numI);
            }
            if (listIdentitiesRequest.j() != null) {
                String strJ = listIdentitiesRequest.j();
                awsJsonWriterA.a("NextToken");
                awsJsonWriterA.b(strJ);
            }
            if (listIdentitiesRequest.l() != null) {
                Boolean boolL = listIdentitiesRequest.l();
                awsJsonWriterA.a("HideDisabled");
                awsJsonWriterA.a(boolL.booleanValue());
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
