package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.cognito.clientcontext.datacollection.DataRecordKey;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.ConfirmDeviceRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DeviceSecretVerifierConfigType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class ConfirmDeviceRequestMarshaller implements Marshaller<Request<ConfirmDeviceRequest>, ConfirmDeviceRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<ConfirmDeviceRequest> a(ConfirmDeviceRequest confirmDeviceRequest) {
        if (confirmDeviceRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(ConfirmDeviceRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(confirmDeviceRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.ConfirmDevice");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (confirmDeviceRequest.h() != null) {
                String strH = confirmDeviceRequest.h();
                awsJsonWriterA.a("AccessToken");
                awsJsonWriterA.b(strH);
            }
            if (confirmDeviceRequest.i() != null) {
                String strI = confirmDeviceRequest.i();
                awsJsonWriterA.a("DeviceKey");
                awsJsonWriterA.b(strI);
            }
            if (confirmDeviceRequest.j() != null) {
                DeviceSecretVerifierConfigType deviceSecretVerifierConfigTypeJ = confirmDeviceRequest.j();
                awsJsonWriterA.a("DeviceSecretVerifierConfig");
                DeviceSecretVerifierConfigTypeJsonMarshaller.a().a(deviceSecretVerifierConfigTypeJ, awsJsonWriterA);
            }
            if (confirmDeviceRequest.k() != null) {
                String strK = confirmDeviceRequest.k();
                awsJsonWriterA.a(DataRecordKey.i);
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
