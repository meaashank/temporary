package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AdminSetUserSettingsRequest;
import com.amazonaws.services.cognitoidentityprovider.model.MFAOptionType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdminSetUserSettingsRequestMarshaller implements Marshaller<Request<AdminSetUserSettingsRequest>, AdminSetUserSettingsRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<AdminSetUserSettingsRequest> a(AdminSetUserSettingsRequest adminSetUserSettingsRequest) {
        if (adminSetUserSettingsRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(AdminSetUserSettingsRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(adminSetUserSettingsRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.AdminSetUserSettings");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (adminSetUserSettingsRequest.h() != null) {
                String strH = adminSetUserSettingsRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (adminSetUserSettingsRequest.i() != null) {
                String strI = adminSetUserSettingsRequest.i();
                awsJsonWriterA.a("Username");
                awsJsonWriterA.b(strI);
            }
            if (adminSetUserSettingsRequest.j() != null) {
                List<MFAOptionType> listJ = adminSetUserSettingsRequest.j();
                awsJsonWriterA.a("MFAOptions");
                awsJsonWriterA.a();
                for (MFAOptionType mFAOptionType : listJ) {
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
