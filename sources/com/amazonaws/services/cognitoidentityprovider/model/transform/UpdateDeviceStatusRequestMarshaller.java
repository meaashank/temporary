package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateDeviceStatusRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class UpdateDeviceStatusRequestMarshaller implements Marshaller<Request<UpdateDeviceStatusRequest>, UpdateDeviceStatusRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<UpdateDeviceStatusRequest> a(UpdateDeviceStatusRequest updateDeviceStatusRequest) {
        if (updateDeviceStatusRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(UpdateDeviceStatusRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(updateDeviceStatusRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.UpdateDeviceStatus");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (updateDeviceStatusRequest.h() != null) {
                String strH = updateDeviceStatusRequest.h();
                awsJsonWriterA.a("AccessToken");
                awsJsonWriterA.b(strH);
            }
            if (updateDeviceStatusRequest.i() != null) {
                String strI = updateDeviceStatusRequest.i();
                awsJsonWriterA.a("DeviceKey");
                awsJsonWriterA.b(strI);
            }
            if (updateDeviceStatusRequest.j() != null) {
                String strJ = updateDeviceStatusRequest.j();
                awsJsonWriterA.a("DeviceRememberedStatus");
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
