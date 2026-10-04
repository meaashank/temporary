package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AdminListDevicesRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class AdminListDevicesRequestMarshaller implements Marshaller<Request<AdminListDevicesRequest>, AdminListDevicesRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<AdminListDevicesRequest> a(AdminListDevicesRequest adminListDevicesRequest) {
        if (adminListDevicesRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(AdminListDevicesRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(adminListDevicesRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.AdminListDevices");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (adminListDevicesRequest.h() != null) {
                String strH = adminListDevicesRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (adminListDevicesRequest.i() != null) {
                String strI = adminListDevicesRequest.i();
                awsJsonWriterA.a("Username");
                awsJsonWriterA.b(strI);
            }
            if (adminListDevicesRequest.j() != null) {
                Integer numJ = adminListDevicesRequest.j();
                awsJsonWriterA.a("Limit");
                awsJsonWriterA.a(numJ);
            }
            if (adminListDevicesRequest.k() != null) {
                String strK = adminListDevicesRequest.k();
                awsJsonWriterA.a("PaginationToken");
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
