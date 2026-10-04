package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateIdentityProviderRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class UpdateIdentityProviderRequestMarshaller implements Marshaller<Request<UpdateIdentityProviderRequest>, UpdateIdentityProviderRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<UpdateIdentityProviderRequest> a(UpdateIdentityProviderRequest updateIdentityProviderRequest) {
        if (updateIdentityProviderRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(UpdateIdentityProviderRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(updateIdentityProviderRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.UpdateIdentityProvider");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (updateIdentityProviderRequest.h() != null) {
                String strH = updateIdentityProviderRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (updateIdentityProviderRequest.i() != null) {
                String strI = updateIdentityProviderRequest.i();
                awsJsonWriterA.a("ProviderName");
                awsJsonWriterA.b(strI);
            }
            if (updateIdentityProviderRequest.j() != null) {
                Map<String, String> mapJ = updateIdentityProviderRequest.j();
                awsJsonWriterA.a("ProviderDetails");
                awsJsonWriterA.c();
                for (Map.Entry<String, String> entry : mapJ.entrySet()) {
                    String value = entry.getValue();
                    if (value != null) {
                        awsJsonWriterA.a(entry.getKey());
                        awsJsonWriterA.b(value);
                    }
                }
                awsJsonWriterA.d();
            }
            if (updateIdentityProviderRequest.l() != null) {
                Map<String, String> mapL = updateIdentityProviderRequest.l();
                awsJsonWriterA.a("AttributeMapping");
                awsJsonWriterA.c();
                for (Map.Entry<String, String> entry2 : mapL.entrySet()) {
                    String value2 = entry2.getValue();
                    if (value2 != null) {
                        awsJsonWriterA.a(entry2.getKey());
                        awsJsonWriterA.b(value2);
                    }
                }
                awsJsonWriterA.d();
            }
            if (updateIdentityProviderRequest.n() != null) {
                List<String> listN = updateIdentityProviderRequest.n();
                awsJsonWriterA.a("IdpIdentifiers");
                awsJsonWriterA.a();
                for (String str : listN) {
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
