package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.SetUserPoolMfaConfigRequest;
import com.amazonaws.services.cognitoidentityprovider.model.SmsMfaConfigType;
import com.amazonaws.services.cognitoidentityprovider.model.SoftwareTokenMfaConfigType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class SetUserPoolMfaConfigRequestMarshaller implements Marshaller<Request<SetUserPoolMfaConfigRequest>, SetUserPoolMfaConfigRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<SetUserPoolMfaConfigRequest> a(SetUserPoolMfaConfigRequest setUserPoolMfaConfigRequest) {
        if (setUserPoolMfaConfigRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(SetUserPoolMfaConfigRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(setUserPoolMfaConfigRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.SetUserPoolMfaConfig");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (setUserPoolMfaConfigRequest.h() != null) {
                String strH = setUserPoolMfaConfigRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (setUserPoolMfaConfigRequest.i() != null) {
                SmsMfaConfigType smsMfaConfigTypeI = setUserPoolMfaConfigRequest.i();
                awsJsonWriterA.a("SmsMfaConfiguration");
                SmsMfaConfigTypeJsonMarshaller.a().a(smsMfaConfigTypeI, awsJsonWriterA);
            }
            if (setUserPoolMfaConfigRequest.j() != null) {
                SoftwareTokenMfaConfigType softwareTokenMfaConfigTypeJ = setUserPoolMfaConfigRequest.j();
                awsJsonWriterA.a("SoftwareTokenMfaConfiguration");
                SoftwareTokenMfaConfigTypeJsonMarshaller.a().a(softwareTokenMfaConfigTypeJ, awsJsonWriterA);
            }
            if (setUserPoolMfaConfigRequest.k() != null) {
                String strK = setUserPoolMfaConfigRequest.k();
                awsJsonWriterA.a("MfaConfiguration");
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
