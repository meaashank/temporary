package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AdminRespondToAuthChallengeRequest;
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
public class AdminRespondToAuthChallengeRequestMarshaller implements Marshaller<Request<AdminRespondToAuthChallengeRequest>, AdminRespondToAuthChallengeRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<AdminRespondToAuthChallengeRequest> a(AdminRespondToAuthChallengeRequest adminRespondToAuthChallengeRequest) {
        if (adminRespondToAuthChallengeRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(AdminRespondToAuthChallengeRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(adminRespondToAuthChallengeRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.AdminRespondToAuthChallenge");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (adminRespondToAuthChallengeRequest.h() != null) {
                String strH = adminRespondToAuthChallengeRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (adminRespondToAuthChallengeRequest.i() != null) {
                String strI = adminRespondToAuthChallengeRequest.i();
                awsJsonWriterA.a("ClientId");
                awsJsonWriterA.b(strI);
            }
            if (adminRespondToAuthChallengeRequest.j() != null) {
                String strJ = adminRespondToAuthChallengeRequest.j();
                awsJsonWriterA.a("ChallengeName");
                awsJsonWriterA.b(strJ);
            }
            if (adminRespondToAuthChallengeRequest.k() != null) {
                Map<String, String> mapK = adminRespondToAuthChallengeRequest.k();
                awsJsonWriterA.a("ChallengeResponses");
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
            if (adminRespondToAuthChallengeRequest.m() != null) {
                String strM = adminRespondToAuthChallengeRequest.m();
                awsJsonWriterA.a("Session");
                awsJsonWriterA.b(strM);
            }
            if (adminRespondToAuthChallengeRequest.n() != null) {
                AnalyticsMetadataType analyticsMetadataTypeN = adminRespondToAuthChallengeRequest.n();
                awsJsonWriterA.a("AnalyticsMetadata");
                AnalyticsMetadataTypeJsonMarshaller.a().a(analyticsMetadataTypeN, awsJsonWriterA);
            }
            if (adminRespondToAuthChallengeRequest.o() != null) {
                ContextDataType contextDataTypeO = adminRespondToAuthChallengeRequest.o();
                awsJsonWriterA.a("ContextData");
                ContextDataTypeJsonMarshaller.a().a(contextDataTypeO, awsJsonWriterA);
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
