package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.MFAOptionType;
import com.amazonaws.services.cognitoidentityprovider.model.SetUserSettingsRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SetUserSettingsRequestMarshaller implements Marshaller<Request<SetUserSettingsRequest>, SetUserSettingsRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<SetUserSettingsRequest> a(SetUserSettingsRequest setUserSettingsRequest) {
        if (setUserSettingsRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(SetUserSettingsRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(setUserSettingsRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.SetUserSettings");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (setUserSettingsRequest.h() != null) {
                String strH = setUserSettingsRequest.h();
                awsJsonWriterA.a("AccessToken");
                awsJsonWriterA.b(strH);
            }
            if (setUserSettingsRequest.i() != null) {
                List<MFAOptionType> listI = setUserSettingsRequest.i();
                awsJsonWriterA.a("MFAOptions");
                awsJsonWriterA.a();
                for (MFAOptionType mFAOptionType : listI) {
                    if (mFAOptionType != null) {
                        MFAOptionTypeJsonMarshaller.a().a(mFAOptionType, awsJsonWriterA);
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
