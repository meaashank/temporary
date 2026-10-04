package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.CreateUserImportJobRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class CreateUserImportJobRequestMarshaller implements Marshaller<Request<CreateUserImportJobRequest>, CreateUserImportJobRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<CreateUserImportJobRequest> a(CreateUserImportJobRequest createUserImportJobRequest) {
        if (createUserImportJobRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(CreateUserImportJobRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(createUserImportJobRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.CreateUserImportJob");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (createUserImportJobRequest.h() != null) {
                String strH = createUserImportJobRequest.h();
                awsJsonWriterA.a("JobName");
                awsJsonWriterA.b(strH);
            }
            if (createUserImportJobRequest.i() != null) {
                String strI = createUserImportJobRequest.i();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strI);
            }
            if (createUserImportJobRequest.j() != null) {
                String strJ = createUserImportJobRequest.j();
                awsJsonWriterA.a("CloudWatchLogsRoleArn");
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
