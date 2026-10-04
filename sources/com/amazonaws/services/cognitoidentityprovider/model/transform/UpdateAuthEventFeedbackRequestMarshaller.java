package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateAuthEventFeedbackRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class UpdateAuthEventFeedbackRequestMarshaller implements Marshaller<Request<UpdateAuthEventFeedbackRequest>, UpdateAuthEventFeedbackRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<UpdateAuthEventFeedbackRequest> a(UpdateAuthEventFeedbackRequest updateAuthEventFeedbackRequest) {
        if (updateAuthEventFeedbackRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(UpdateAuthEventFeedbackRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(updateAuthEventFeedbackRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.UpdateAuthEventFeedback");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (updateAuthEventFeedbackRequest.h() != null) {
                String strH = updateAuthEventFeedbackRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (updateAuthEventFeedbackRequest.i() != null) {
                String strI = updateAuthEventFeedbackRequest.i();
                awsJsonWriterA.a("Username");
                awsJsonWriterA.b(strI);
            }
            if (updateAuthEventFeedbackRequest.j() != null) {
                String strJ = updateAuthEventFeedbackRequest.j();
                awsJsonWriterA.a("EventId");
                awsJsonWriterA.b(strJ);
            }
            if (updateAuthEventFeedbackRequest.k() != null) {
                String strK = updateAuthEventFeedbackRequest.k();
                awsJsonWriterA.a("FeedbackToken");
                awsJsonWriterA.b(strK);
            }
            if (updateAuthEventFeedbackRequest.l() != null) {
                String strL = updateAuthEventFeedbackRequest.l();
                awsJsonWriterA.a("FeedbackValue");
                awsJsonWriterA.b(strL);
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
