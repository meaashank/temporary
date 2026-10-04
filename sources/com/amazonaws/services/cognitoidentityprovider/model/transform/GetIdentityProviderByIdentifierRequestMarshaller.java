package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.GetIdentityProviderByIdentifierRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class GetIdentityProviderByIdentifierRequestMarshaller implements Marshaller<Request<GetIdentityProviderByIdentifierRequest>, GetIdentityProviderByIdentifierRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<GetIdentityProviderByIdentifierRequest> a(GetIdentityProviderByIdentifierRequest getIdentityProviderByIdentifierRequest) {
        if (getIdentityProviderByIdentifierRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(GetIdentityProviderByIdentifierRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(getIdentityProviderByIdentifierRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.GetIdentityProviderByIdentifier");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (getIdentityProviderByIdentifierRequest.h() != null) {
                String strH = getIdentityProviderByIdentifierRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (getIdentityProviderByIdentifierRequest.i() != null) {
                String strI = getIdentityProviderByIdentifierRequest.i();
                awsJsonWriterA.a("IdpIdentifier");
                awsJsonWriterA.b(strI);
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
