package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AdminSetUserMFAPreferenceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.SMSMfaSettingsType;
import com.amazonaws.services.cognitoidentityprovider.model.SoftwareTokenMfaSettingsType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class AdminSetUserMFAPreferenceRequestMarshaller implements Marshaller<Request<AdminSetUserMFAPreferenceRequest>, AdminSetUserMFAPreferenceRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<AdminSetUserMFAPreferenceRequest> a(AdminSetUserMFAPreferenceRequest adminSetUserMFAPreferenceRequest) {
        if (adminSetUserMFAPreferenceRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(AdminSetUserMFAPreferenceRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(adminSetUserMFAPreferenceRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.AdminSetUserMFAPreference");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (adminSetUserMFAPreferenceRequest.h() != null) {
                SMSMfaSettingsType sMSMfaSettingsTypeH = adminSetUserMFAPreferenceRequest.h();
                awsJsonWriterA.a("SMSMfaSettings");
                SMSMfaSettingsTypeJsonMarshaller.a().a(sMSMfaSettingsTypeH, awsJsonWriterA);
            }
            if (adminSetUserMFAPreferenceRequest.i() != null) {
                SoftwareTokenMfaSettingsType softwareTokenMfaSettingsTypeI = adminSetUserMFAPreferenceRequest.i();
                awsJsonWriterA.a("SoftwareTokenMfaSettings");
                SoftwareTokenMfaSettingsTypeJsonMarshaller.a().a(softwareTokenMfaSettingsTypeI, awsJsonWriterA);
            }
            if (adminSetUserMFAPreferenceRequest.j() != null) {
                String strJ = adminSetUserMFAPreferenceRequest.j();
                awsJsonWriterA.a("Username");
                awsJsonWriterA.b(strJ);
            }
            if (adminSetUserMFAPreferenceRequest.k() != null) {
                String strK = adminSetUserMFAPreferenceRequest.k();
                awsJsonWriterA.a("UserPoolId");
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
