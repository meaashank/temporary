package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.CognitoIdentityProvider;
import com.amazonaws.services.cognitoidentity.model.CreateIdentityPoolRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CreateIdentityPoolRequestMarshaller implements Marshaller<Request<CreateIdentityPoolRequest>, CreateIdentityPoolRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<CreateIdentityPoolRequest> a(CreateIdentityPoolRequest createIdentityPoolRequest) {
        if (createIdentityPoolRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(CreateIdentityPoolRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(createIdentityPoolRequest, "AmazonCognitoIdentity");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityService.CreateIdentityPool");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (createIdentityPoolRequest.h() != null) {
                String strH = createIdentityPoolRequest.h();
                awsJsonWriterA.a("IdentityPoolName");
                awsJsonWriterA.b(strH);
            }
            if (createIdentityPoolRequest.j() != null) {
                Boolean boolJ = createIdentityPoolRequest.j();
                awsJsonWriterA.a("AllowUnauthenticatedIdentities");
                awsJsonWriterA.a(boolJ.booleanValue());
            }
            if (createIdentityPoolRequest.k() != null) {
                Map<String, String> mapK = createIdentityPoolRequest.k();
                awsJsonWriterA.a("SupportedLoginProviders");
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
            if (createIdentityPoolRequest.m() != null) {
                String strM = createIdentityPoolRequest.m();
                awsJsonWriterA.a("DeveloperProviderName");
                awsJsonWriterA.b(strM);
            }
            if (createIdentityPoolRequest.n() != null) {
                List<String> listN = createIdentityPoolRequest.n();
                awsJsonWriterA.a("OpenIdConnectProviderARNs");
                awsJsonWriterA.a();
                for (String str : listN) {
                    if (str != null) {
                        awsJsonWriterA.b(str);
                    }
                }
                awsJsonWriterA.b();
            }
            if (createIdentityPoolRequest.o() != null) {
                List<CognitoIdentityProvider> listO = createIdentityPoolRequest.o();
                awsJsonWriterA.a("CognitoIdentityProviders");
                awsJsonWriterA.a();
                for (CognitoIdentityProvider cognitoIdentityProvider : listO) {
                    if (cognitoIdentityProvider != null) {
                        CognitoIdentityProviderJsonMarshaller.a().a(cognitoIdentityProvider, awsJsonWriterA);
                    }
                }
                awsJsonWriterA.b();
            }
            if (createIdentityPoolRequest.p() != null) {
                List<String> listP = createIdentityPoolRequest.p();
                awsJsonWriterA.a("SamlProviderARNs");
                awsJsonWriterA.a();
                for (String str2 : listP) {
                    if (str2 != null) {
                        awsJsonWriterA.b(str2);
                    }
                }
                awsJsonWriterA.b();
            }
            if (createIdentityPoolRequest.q() != null) {
                Map<String, String> mapQ = createIdentityPoolRequest.q();
                awsJsonWriterA.a("IdentityPoolTags");
                awsJsonWriterA.c();
                for (Map.Entry<String, String> entry2 : mapQ.entrySet()) {
                    String value2 = entry2.getValue();
                    if (value2 != null) {
                        awsJsonWriterA.a(entry2.getKey());
                        awsJsonWriterA.b(value2);
                    }
                }
                awsJsonWriterA.d();
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
