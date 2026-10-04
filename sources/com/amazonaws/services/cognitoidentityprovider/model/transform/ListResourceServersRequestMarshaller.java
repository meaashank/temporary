package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.ListResourceServersRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class ListResourceServersRequestMarshaller implements Marshaller<Request<ListResourceServersRequest>, ListResourceServersRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<ListResourceServersRequest> a(ListResourceServersRequest listResourceServersRequest) {
        if (listResourceServersRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(ListResourceServersRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(listResourceServersRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.ListResourceServers");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (listResourceServersRequest.h() != null) {
                String strH = listResourceServersRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (listResourceServersRequest.i() != null) {
                Integer numI = listResourceServersRequest.i();
                awsJsonWriterA.a("MaxResults");
                awsJsonWriterA.a(numI);
            }
            if (listResourceServersRequest.j() != null) {
                String strJ = listResourceServersRequest.j();
                awsJsonWriterA.a("NextToken");
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
