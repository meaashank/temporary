package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AdminUpdateDeviceStatusRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class AdminUpdateDeviceStatusRequestMarshaller implements Marshaller<Request<AdminUpdateDeviceStatusRequest>, AdminUpdateDeviceStatusRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<AdminUpdateDeviceStatusRequest> a(AdminUpdateDeviceStatusRequest adminUpdateDeviceStatusRequest) {
        if (adminUpdateDeviceStatusRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(AdminUpdateDeviceStatusRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(adminUpdateDeviceStatusRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.AdminUpdateDeviceStatus");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (adminUpdateDeviceStatusRequest.h() != null) {
                String strH = adminUpdateDeviceStatusRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (adminUpdateDeviceStatusRequest.i() != null) {
                String strI = adminUpdateDeviceStatusRequest.i();
                awsJsonWriterA.a("Username");
                awsJsonWriterA.b(strI);
            }
            if (adminUpdateDeviceStatusRequest.j() != null) {
                String strJ = adminUpdateDeviceStatusRequest.j();
                awsJsonWriterA.a("DeviceKey");
                awsJsonWriterA.b(strJ);
            }
            if (adminUpdateDeviceStatusRequest.k() != null) {
                String strK = adminUpdateDeviceStatusRequest.k();
                awsJsonWriterA.a("DeviceRememberedStatus");
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
