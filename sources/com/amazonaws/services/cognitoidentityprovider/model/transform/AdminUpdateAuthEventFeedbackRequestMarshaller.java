package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AdminUpdateAuthEventFeedbackRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class AdminUpdateAuthEventFeedbackRequestMarshaller implements Marshaller<Request<AdminUpdateAuthEventFeedbackRequest>, AdminUpdateAuthEventFeedbackRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<AdminUpdateAuthEventFeedbackRequest> a(AdminUpdateAuthEventFeedbackRequest adminUpdateAuthEventFeedbackRequest) {
        if (adminUpdateAuthEventFeedbackRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(AdminUpdateAuthEventFeedbackRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(adminUpdateAuthEventFeedbackRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.AdminUpdateAuthEventFeedback");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (adminUpdateAuthEventFeedbackRequest.h() != null) {
                String strH = adminUpdateAuthEventFeedbackRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (adminUpdateAuthEventFeedbackRequest.i() != null) {
                String strI = adminUpdateAuthEventFeedbackRequest.i();
                awsJsonWriterA.a("Username");
                awsJsonWriterA.b(strI);
            }
            if (adminUpdateAuthEventFeedbackRequest.j() != null) {
                String strJ = adminUpdateAuthEventFeedbackRequest.j();
                awsJsonWriterA.a("EventId");
                awsJsonWriterA.b(strJ);
            }
            if (adminUpdateAuthEventFeedbackRequest.k() != null) {
                String strK = adminUpdateAuthEventFeedbackRequest.k();
                awsJsonWriterA.a("FeedbackValue");
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
