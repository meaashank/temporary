package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AdminForgetDeviceRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class AdminForgetDeviceRequestMarshaller implements Marshaller<Request<AdminForgetDeviceRequest>, AdminForgetDeviceRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<AdminForgetDeviceRequest> a(AdminForgetDeviceRequest adminForgetDeviceRequest) {
        if (adminForgetDeviceRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(AdminForgetDeviceRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(adminForgetDeviceRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.AdminForgetDevice");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (adminForgetDeviceRequest.h() != null) {
                String strH = adminForgetDeviceRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (adminForgetDeviceRequest.i() != null) {
                String strI = adminForgetDeviceRequest.i();
                awsJsonWriterA.a("Username");
                awsJsonWriterA.b(strI);
            }
            if (adminForgetDeviceRequest.j() != null) {
                String strJ = adminForgetDeviceRequest.j();
                awsJsonWriterA.a("DeviceKey");
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
