package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AdminDeleteUserAttributesRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdminDeleteUserAttributesRequestMarshaller implements Marshaller<Request<AdminDeleteUserAttributesRequest>, AdminDeleteUserAttributesRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<AdminDeleteUserAttributesRequest> a(AdminDeleteUserAttributesRequest adminDeleteUserAttributesRequest) {
        if (adminDeleteUserAttributesRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(AdminDeleteUserAttributesRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(adminDeleteUserAttributesRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.AdminDeleteUserAttributes");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (adminDeleteUserAttributesRequest.h() != null) {
                String strH = adminDeleteUserAttributesRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (adminDeleteUserAttributesRequest.i() != null) {
                String strI = adminDeleteUserAttributesRequest.i();
                awsJsonWriterA.a("Username");
                awsJsonWriterA.b(strI);
            }
            if (adminDeleteUserAttributesRequest.j() != null) {
                List<String> listJ = adminDeleteUserAttributesRequest.j();
                awsJsonWriterA.a("UserAttributeNames");
                awsJsonWriterA.a();
                for (String str : listJ) {
                    if (str != null) {
                        awsJsonWriterA.b(str);
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
