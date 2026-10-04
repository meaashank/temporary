package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.GetIdRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class GetIdRequestMarshaller implements Marshaller<Request<GetIdRequest>, GetIdRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<GetIdRequest> a(GetIdRequest getIdRequest) {
        if (getIdRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(GetIdRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(getIdRequest, "AmazonCognitoIdentity");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityService.GetId");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (getIdRequest.h() != null) {
                String strH = getIdRequest.h();
                awsJsonWriterA.a("AccountId");
                awsJsonWriterA.b(strH);
            }
            if (getIdRequest.i() != null) {
                String strI = getIdRequest.i();
                awsJsonWriterA.a("IdentityPoolId");
                awsJsonWriterA.b(strI);
            }
            if (getIdRequest.j() != null) {
                Map<String, String> mapJ = getIdRequest.j();
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
