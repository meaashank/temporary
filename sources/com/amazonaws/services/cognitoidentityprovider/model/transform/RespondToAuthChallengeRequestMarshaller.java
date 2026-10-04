package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsMetadataType;
import com.amazonaws.services.cognitoidentityprovider.model.RespondToAuthChallengeRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UserContextDataType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class RespondToAuthChallengeRequestMarshaller implements Marshaller<Request<RespondToAuthChallengeRequest>, RespondToAuthChallengeRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<RespondToAuthChallengeRequest> a(RespondToAuthChallengeRequest respondToAuthChallengeRequest) {
        if (respondToAuthChallengeRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(RespondToAuthChallengeRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(respondToAuthChallengeRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.RespondToAuthChallenge");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (respondToAuthChallengeRequest.h() != null) {
                String strH = respondToAuthChallengeRequest.h();
                awsJsonWriterA.a("ClientId");
                awsJsonWriterA.b(strH);
            }
            if (respondToAuthChallengeRequest.i() != null) {
                String strI = respondToAuthChallengeRequest.i();
                awsJsonWriterA.a("ChallengeName");
                awsJsonWriterA.b(strI);
            }
            if (respondToAuthChallengeRequest.j() != null) {
                String strJ = respondToAuthChallengeRequest.j();
                awsJsonWriterA.a("Session");
                awsJsonWriterA.b(strJ);
            }
            if (respondToAuthChallengeRequest.k() != null) {
                Map<String, String> mapK = respondToAuthChallengeRequest.k();
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
            if (respondToAuthChallengeRequest.m() != null) {
                AnalyticsMetadataType analyticsMetadataTypeM = respondToAuthChallengeRequest.m();
                awsJsonWriterA.a("AnalyticsMetadata");
                AnalyticsMetadataTypeJsonMarshaller.a().a(analyticsMetadataTypeM, awsJsonWriterA);
            }
            if (respondToAuthChallengeRequest.n() != null) {
                UserContextDataType userContextDataTypeN = respondToAuthChallengeRequest.n();
                awsJsonWriterA.a("UserContextData");
                UserContextDataTypeJsonMarshaller.a().a(userContextDataTypeN, awsJsonWriterA);
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
