package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.SetUICustomizationRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes.dex */
public class SetUICustomizationRequestMarshaller implements Marshaller<Request<SetUICustomizationRequest>, SetUICustomizationRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<SetUICustomizationRequest> a(SetUICustomizationRequest setUICustomizationRequest) {
        if (setUICustomizationRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(SetUICustomizationRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(setUICustomizationRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.SetUICustomization");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (setUICustomizationRequest.h() != null) {
                String strH = setUICustomizationRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (setUICustomizationRequest.i() != null) {
                String strI = setUICustomizationRequest.i();
                awsJsonWriterA.a("ClientId");
                awsJsonWriterA.b(strI);
            }
            if (setUICustomizationRequest.j() != null) {
                String strJ = setUICustomizationRequest.j();
                awsJsonWriterA.a("CSS");
                awsJsonWriterA.b(strJ);
            }
            if (setUICustomizationRequest.k() != null) {
                ByteBuffer byteBufferK = setUICustomizationRequest.k();
                awsJsonWriterA.a("ImageFile");
                awsJsonWriterA.a(byteBufferK);
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
