package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.UnlinkIdentityRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class UnlinkIdentityRequestMarshaller implements Marshaller<Request<UnlinkIdentityRequest>, UnlinkIdentityRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<UnlinkIdentityRequest> a(UnlinkIdentityRequest unlinkIdentityRequest) {
        if (unlinkIdentityRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(UnlinkIdentityRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(unlinkIdentityRequest, "AmazonCognitoIdentity");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityService.UnlinkIdentity");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (unlinkIdentityRequest.h() != null) {
                String strH = unlinkIdentityRequest.h();
                awsJsonWriterA.a("IdentityId");
                awsJsonWriterA.b(strH);
            }
            if (unlinkIdentityRequest.i() != null) {
                Map<String, String> mapI = unlinkIdentityRequest.i();
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
            if (unlinkIdentityRequest.k() != null) {
                List<String> listK = unlinkIdentityRequest.k();
                awsJsonWriterA.a("LoginsToRemove");
                awsJsonWriterA.a();
                for (String str : listK) {
                    if (str != null) {
                        awsJsonWriterA.b(str);
                    }
                }
                awsJsonWriterA.b();
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
