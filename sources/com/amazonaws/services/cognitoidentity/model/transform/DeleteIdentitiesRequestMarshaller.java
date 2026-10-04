package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.DeleteIdentitiesRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class DeleteIdentitiesRequestMarshaller implements Marshaller<Request<DeleteIdentitiesRequest>, DeleteIdentitiesRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<DeleteIdentitiesRequest> a(DeleteIdentitiesRequest deleteIdentitiesRequest) {
        if (deleteIdentitiesRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(DeleteIdentitiesRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(deleteIdentitiesRequest, "AmazonCognitoIdentity");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityService.DeleteIdentities");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (deleteIdentitiesRequest.h() != null) {
                List<String> listH = deleteIdentitiesRequest.h();
                awsJsonWriterA.a("IdentityIdsToDelete");
                awsJsonWriterA.a();
                for (String str : listH) {
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
