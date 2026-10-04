package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.ChangePasswordRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class ChangePasswordRequestMarshaller implements Marshaller<Request<ChangePasswordRequest>, ChangePasswordRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<ChangePasswordRequest> a(ChangePasswordRequest changePasswordRequest) {
        if (changePasswordRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(ChangePasswordRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(changePasswordRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.ChangePassword");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (changePasswordRequest.h() != null) {
                String strH = changePasswordRequest.h();
                awsJsonWriterA.a("PreviousPassword");
                awsJsonWriterA.b(strH);
            }
            if (changePasswordRequest.i() != null) {
                String strI = changePasswordRequest.i();
                awsJsonWriterA.a("ProposedPassword");
                awsJsonWriterA.b(strI);
            }
            if (changePasswordRequest.j() != null) {
                String strJ = changePasswordRequest.j();
                awsJsonWriterA.a("AccessToken");
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
