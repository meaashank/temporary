package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.GetUserAttributeVerificationCodeRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class GetUserAttributeVerificationCodeRequestMarshaller implements Marshaller<Request<GetUserAttributeVerificationCodeRequest>, GetUserAttributeVerificationCodeRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<GetUserAttributeVerificationCodeRequest> a(GetUserAttributeVerificationCodeRequest getUserAttributeVerificationCodeRequest) {
        if (getUserAttributeVerificationCodeRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(GetUserAttributeVerificationCodeRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(getUserAttributeVerificationCodeRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.GetUserAttributeVerificationCode");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (getUserAttributeVerificationCodeRequest.h() != null) {
                String strH = getUserAttributeVerificationCodeRequest.h();
                awsJsonWriterA.a("AccessToken");
                awsJsonWriterA.b(strH);
            }
            if (getUserAttributeVerificationCodeRequest.i() != null) {
                String strI = getUserAttributeVerificationCodeRequest.i();
                awsJsonWriterA.a("AttributeName");
                awsJsonWriterA.b(strI);
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
