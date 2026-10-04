package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsMetadataType;
import com.amazonaws.services.cognitoidentityprovider.model.InitiateAuthRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UserContextDataType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class InitiateAuthRequestMarshaller implements Marshaller<Request<InitiateAuthRequest>, InitiateAuthRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<InitiateAuthRequest> a(InitiateAuthRequest initiateAuthRequest) {
        if (initiateAuthRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(InitiateAuthRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(initiateAuthRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.InitiateAuth");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (initiateAuthRequest.h() != null) {
                String strH = initiateAuthRequest.h();
                awsJsonWriterA.a("AuthFlow");
                awsJsonWriterA.b(strH);
            }
            if (initiateAuthRequest.i() != null) {
                Map<String, String> mapI = initiateAuthRequest.i();
                awsJsonWriterA.a("AuthParameters");
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
            if (initiateAuthRequest.k() != null) {
                Map<String, String> mapK = initiateAuthRequest.k();
                awsJsonWriterA.a("ClientMetadata");
                awsJsonWriterA.c();
                for (Map.Entry<String, String> entry2 : mapK.entrySet()) {
                    String value2 = entry2.getValue();
                    if (value2 != null) {
                        awsJsonWriterA.a(entry2.getKey());
                        awsJsonWriterA.b(value2);
                    }
                }
                awsJsonWriterA.d();
            }
            if (initiateAuthRequest.m() != null) {
                String strM = initiateAuthRequest.m();
                awsJsonWriterA.a("ClientId");
                awsJsonWriterA.b(strM);
            }
            if (initiateAuthRequest.n() != null) {
                AnalyticsMetadataType analyticsMetadataTypeN = initiateAuthRequest.n();
                awsJsonWriterA.a("AnalyticsMetadata");
                AnalyticsMetadataTypeJsonMarshaller.a().a(analyticsMetadataTypeN, awsJsonWriterA);
            }
            if (initiateAuthRequest.o() != null) {
                UserContextDataType userContextDataTypeO = initiateAuthRequest.o();
                awsJsonWriterA.a("UserContextData");
                UserContextDataTypeJsonMarshaller.a().a(userContextDataTypeO, awsJsonWriterA);
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
