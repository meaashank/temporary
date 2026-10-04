package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AdminUpdateUserAttributesRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AttributeType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdminUpdateUserAttributesRequestMarshaller implements Marshaller<Request<AdminUpdateUserAttributesRequest>, AdminUpdateUserAttributesRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<AdminUpdateUserAttributesRequest> a(AdminUpdateUserAttributesRequest adminUpdateUserAttributesRequest) {
        if (adminUpdateUserAttributesRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(AdminUpdateUserAttributesRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(adminUpdateUserAttributesRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.AdminUpdateUserAttributes");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (adminUpdateUserAttributesRequest.h() != null) {
                String strH = adminUpdateUserAttributesRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (adminUpdateUserAttributesRequest.i() != null) {
                String strI = adminUpdateUserAttributesRequest.i();
                awsJsonWriterA.a("Username");
                awsJsonWriterA.b(strI);
            }
            if (adminUpdateUserAttributesRequest.j() != null) {
                List<AttributeType> listJ = adminUpdateUserAttributesRequest.j();
                awsJsonWriterA.a("UserAttributes");
                awsJsonWriterA.a();
                for (AttributeType attributeType : listJ) {
                    if (attributeType != null) {
                        AttributeTypeJsonMarshaller.a().a(attributeType, awsJsonWriterA);
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
