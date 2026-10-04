package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.VerifyUserAttributeRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class VerifyUserAttributeRequestMarshaller implements Marshaller<Request<VerifyUserAttributeRequest>, VerifyUserAttributeRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<VerifyUserAttributeRequest> a(VerifyUserAttributeRequest verifyUserAttributeRequest) {
        if (verifyUserAttributeRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(VerifyUserAttributeRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(verifyUserAttributeRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.VerifyUserAttribute");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (verifyUserAttributeRequest.h() != null) {
                String strH = verifyUserAttributeRequest.h();
                awsJsonWriterA.a("AccessToken");
                awsJsonWriterA.b(strH);
            }
            if (verifyUserAttributeRequest.i() != null) {
                String strI = verifyUserAttributeRequest.i();
                awsJsonWriterA.a("AttributeName");
                awsJsonWriterA.b(strI);
            }
            if (verifyUserAttributeRequest.j() != null) {
                String strJ = verifyUserAttributeRequest.j();
                awsJsonWriterA.a("Code");
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
