package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.CreateIdentityProviderRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CreateIdentityProviderRequestMarshaller implements Marshaller<Request<CreateIdentityProviderRequest>, CreateIdentityProviderRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<CreateIdentityProviderRequest> a(CreateIdentityProviderRequest createIdentityProviderRequest) {
        if (createIdentityProviderRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(CreateIdentityProviderRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(createIdentityProviderRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.CreateIdentityProvider");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (createIdentityProviderRequest.h() != null) {
                String strH = createIdentityProviderRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (createIdentityProviderRequest.i() != null) {
                String strI = createIdentityProviderRequest.i();
                awsJsonWriterA.a("ProviderName");
                awsJsonWriterA.b(strI);
            }
            if (createIdentityProviderRequest.j() != null) {
                String strJ = createIdentityProviderRequest.j();
                awsJsonWriterA.a("ProviderType");
                awsJsonWriterA.b(strJ);
            }
            if (createIdentityProviderRequest.k() != null) {
                Map<String, String> mapK = createIdentityProviderRequest.k();
                awsJsonWriterA.a("ProviderDetails");
                awsJsonWriterA.c();
                for (Map.Entry<String, String> entry : mapK.entrySet()) {
                    String value = entry.getValue();
                    if (value != null) {
                        awsJsonWriterA.a(entry.getKey());
                        awsJsonWriterA.b(value);
                    }
                }
                awsJsonWriterA.d();
            }
            if (createIdentityProviderRequest.m() != null) {
                Map<String, String> mapM = createIdentityProviderRequest.m();
                awsJsonWriterA.a("AttributeMapping");
                awsJsonWriterA.c();
                for (Map.Entry<String, String> entry2 : mapM.entrySet()) {
                    String value2 = entry2.getValue();
                    if (value2 != null) {
                        awsJsonWriterA.a(entry2.getKey());
                        awsJsonWriterA.b(value2);
                    }
                }
                awsJsonWriterA.d();
            }
            if (createIdentityProviderRequest.o() != null) {
                List<String> listO = createIdentityProviderRequest.o();
                awsJsonWriterA.a("IdpIdentifiers");
                awsJsonWriterA.a();
                for (String str : listO) {
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
