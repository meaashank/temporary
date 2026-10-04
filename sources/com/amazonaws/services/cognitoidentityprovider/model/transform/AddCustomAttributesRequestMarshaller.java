package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AddCustomAttributesRequest;
import com.amazonaws.services.cognitoidentityprovider.model.SchemaAttributeType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AddCustomAttributesRequestMarshaller implements Marshaller<Request<AddCustomAttributesRequest>, AddCustomAttributesRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<AddCustomAttributesRequest> a(AddCustomAttributesRequest addCustomAttributesRequest) {
        if (addCustomAttributesRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(AddCustomAttributesRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(addCustomAttributesRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.AddCustomAttributes");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (addCustomAttributesRequest.h() != null) {
                String strH = addCustomAttributesRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (addCustomAttributesRequest.i() != null) {
                List<SchemaAttributeType> listI = addCustomAttributesRequest.i();
                awsJsonWriterA.a("CustomAttributes");
                awsJsonWriterA.a();
                for (SchemaAttributeType schemaAttributeType : listI) {
                    if (schemaAttributeType != null) {
                        SchemaAttributeTypeJsonMarshaller.a().a(schemaAttributeType, awsJsonWriterA);
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
