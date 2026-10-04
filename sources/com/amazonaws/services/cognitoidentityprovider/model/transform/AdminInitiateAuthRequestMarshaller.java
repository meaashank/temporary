package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AdminInitiateAuthRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsMetadataType;
import com.amazonaws.services.cognitoidentityprovider.model.ContextDataType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class AdminInitiateAuthRequestMarshaller implements Marshaller<Request<AdminInitiateAuthRequest>, AdminInitiateAuthRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<AdminInitiateAuthRequest> a(AdminInitiateAuthRequest adminInitiateAuthRequest) {
        if (adminInitiateAuthRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(AdminInitiateAuthRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(adminInitiateAuthRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.AdminInitiateAuth");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (adminInitiateAuthRequest.h() != null) {
                String strH = adminInitiateAuthRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (adminInitiateAuthRequest.i() != null) {
                String strI = adminInitiateAuthRequest.i();
                awsJsonWriterA.a("ClientId");
                awsJsonWriterA.b(strI);
            }
            if (adminInitiateAuthRequest.j() != null) {
                String strJ = adminInitiateAuthRequest.j();
                awsJsonWriterA.a("AuthFlow");
                awsJsonWriterA.b(strJ);
            }
            if (adminInitiateAuthRequest.k() != null) {
                Map<String, String> mapK = adminInitiateAuthRequest.k();
                awsJsonWriterA.a("AuthParameters");
                awsJsonWriterA.c();
                for (Map.Entry<String, String> entry : mapK.entrySet()) {
                    String value = entry.getValue();
                    if (value != null) {
                        awsJsonWriterA.a(entry.getKey());
                        awsJsonWriterA.b(value);
                    }
                }
                awsJsonWriterA.d();
            }
            if (adminInitiateAuthRequest.m() != null) {
                Map<String, String> mapM = adminInitiateAuthRequest.m();
                awsJsonWriterA.a("ClientMetadata");
                awsJsonWriterA.c();
                for (Map.Entry<String, String> entry2 : mapM.entrySet()) {
                    String value2 = entry2.getValue();
                    if (value2 != null) {
                        awsJsonWriterA.a(entry2.getKey());
                        awsJsonWriterA.b(value2);
                    }
                }
                awsJsonWriterA.d();
            }
            if (adminInitiateAuthRequest.o() != null) {
                AnalyticsMetadataType analyticsMetadataTypeO = adminInitiateAuthRequest.o();
                awsJsonWriterA.a("AnalyticsMetadata");
                AnalyticsMetadataTypeJsonMarshaller.a().a(analyticsMetadataTypeO, awsJsonWriterA);
            }
            if (adminInitiateAuthRequest.p() != null) {
                ContextDataType contextDataTypeP = adminInitiateAuthRequest.p();
                awsJsonWriterA.a("ContextData");
                ContextDataTypeJsonMarshaller.a().a(contextDataTypeP, awsJsonWriterA);
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
