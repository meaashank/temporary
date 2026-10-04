package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AdminGetDeviceRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class AdminGetDeviceRequestMarshaller implements Marshaller<Request<AdminGetDeviceRequest>, AdminGetDeviceRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<AdminGetDeviceRequest> a(AdminGetDeviceRequest adminGetDeviceRequest) {
        if (adminGetDeviceRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(AdminGetDeviceRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(adminGetDeviceRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.AdminGetDevice");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (adminGetDeviceRequest.h() != null) {
                String strH = adminGetDeviceRequest.h();
                awsJsonWriterA.a("DeviceKey");
                awsJsonWriterA.b(strH);
            }
            if (adminGetDeviceRequest.i() != null) {
                String strI = adminGetDeviceRequest.i();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strI);
            }
            if (adminGetDeviceRequest.j() != null) {
                String strJ = adminGetDeviceRequest.j();
                awsJsonWriterA.a("Username");
                awsJsonWriterA.b(strJ);
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
