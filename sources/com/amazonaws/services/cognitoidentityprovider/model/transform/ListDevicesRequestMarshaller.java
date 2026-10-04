package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.ListDevicesRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class ListDevicesRequestMarshaller implements Marshaller<Request<ListDevicesRequest>, ListDevicesRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<ListDevicesRequest> a(ListDevicesRequest listDevicesRequest) {
        if (listDevicesRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(ListDevicesRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(listDevicesRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.ListDevices");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (listDevicesRequest.h() != null) {
                String strH = listDevicesRequest.h();
                awsJsonWriterA.a("AccessToken");
                awsJsonWriterA.b(strH);
            }
            if (listDevicesRequest.i() != null) {
                Integer numI = listDevicesRequest.i();
                awsJsonWriterA.a("Limit");
                awsJsonWriterA.a(numI);
            }
            if (listDevicesRequest.j() != null) {
                String strJ = listDevicesRequest.j();
                awsJsonWriterA.a("PaginationToken");
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
