package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.SMSMfaSettingsType;
import com.amazonaws.services.cognitoidentityprovider.model.SetUserMFAPreferenceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.SoftwareTokenMfaSettingsType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class SetUserMFAPreferenceRequestMarshaller implements Marshaller<Request<SetUserMFAPreferenceRequest>, SetUserMFAPreferenceRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<SetUserMFAPreferenceRequest> a(SetUserMFAPreferenceRequest setUserMFAPreferenceRequest) {
        if (setUserMFAPreferenceRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(SetUserMFAPreferenceRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(setUserMFAPreferenceRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.SetUserMFAPreference");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (setUserMFAPreferenceRequest.h() != null) {
                SMSMfaSettingsType sMSMfaSettingsTypeH = setUserMFAPreferenceRequest.h();
                awsJsonWriterA.a("SMSMfaSettings");
                SMSMfaSettingsTypeJsonMarshaller.a().a(sMSMfaSettingsTypeH, awsJsonWriterA);
            }
            if (setUserMFAPreferenceRequest.i() != null) {
                SoftwareTokenMfaSettingsType softwareTokenMfaSettingsTypeI = setUserMFAPreferenceRequest.i();
                awsJsonWriterA.a("SoftwareTokenMfaSettings");
                SoftwareTokenMfaSettingsTypeJsonMarshaller.a().a(softwareTokenMfaSettingsTypeI, awsJsonWriterA);
            }
            if (setUserMFAPreferenceRequest.j() != null) {
                String strJ = setUserMFAPreferenceRequest.j();
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
