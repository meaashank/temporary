package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.CognitoIdentityProvider;
import com.amazonaws.services.cognitoidentity.model.UpdateIdentityPoolRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class UpdateIdentityPoolRequestMarshaller implements Marshaller<Request<UpdateIdentityPoolRequest>, UpdateIdentityPoolRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<UpdateIdentityPoolRequest> a(UpdateIdentityPoolRequest updateIdentityPoolRequest) {
        if (updateIdentityPoolRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(UpdateIdentityPoolRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(updateIdentityPoolRequest, "AmazonCognitoIdentity");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityService.UpdateIdentityPool");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (updateIdentityPoolRequest.h() != null) {
                String strH = updateIdentityPoolRequest.h();
                awsJsonWriterA.a("IdentityPoolId");
                awsJsonWriterA.b(strH);
            }
            if (updateIdentityPoolRequest.i() != null) {
                String strI = updateIdentityPoolRequest.i();
                awsJsonWriterA.a("IdentityPoolName");
                awsJsonWriterA.b(strI);
            }
            if (updateIdentityPoolRequest.k() != null) {
                Boolean boolK = updateIdentityPoolRequest.k();
                awsJsonWriterA.a("AllowUnauthenticatedIdentities");
                awsJsonWriterA.a(boolK.booleanValue());
            }
            if (updateIdentityPoolRequest.l() != null) {
                Map<String, String> mapL = updateIdentityPoolRequest.l();
                awsJsonWriterA.a("SupportedLoginProviders");
                awsJsonWriterA.c();
                for (Map.Entry<String, String> entry : mapL.entrySet()) {
                    String value = entry.getValue();
                    if (value != null) {
                        awsJsonWriterA.a(entry.getKey());
                        awsJsonWriterA.b(value);
                    }
                }
                awsJsonWriterA.d();
            }
            if (updateIdentityPoolRequest.n() != null) {
                String strN = updateIdentityPoolRequest.n();
                awsJsonWriterA.a("DeveloperProviderName");
                awsJsonWriterA.b(strN);
            }
            if (updateIdentityPoolRequest.o() != null) {
                List<String> listO = updateIdentityPoolRequest.o();
                awsJsonWriterA.a("OpenIdConnectProviderARNs");
                awsJsonWriterA.a();
                for (String str : listO) {
                    if (str != null) {
                        awsJsonWriterA.b(str);
                    }
                }
                awsJsonWriterA.b();
            }
            if (updateIdentityPoolRequest.p() != null) {
                List<CognitoIdentityProvider> listP = updateIdentityPoolRequest.p();
                awsJsonWriterA.a("CognitoIdentityProviders");
                awsJsonWriterA.a();
                for (CognitoIdentityProvider cognitoIdentityProvider : listP) {
                    if (cognitoIdentityProvider != null) {
                        CognitoIdentityProviderJsonMarshaller.a().a(cognitoIdentityProvider, awsJsonWriterA);
                    }
                }
                awsJsonWriterA.b();
            }
            if (updateIdentityPoolRequest.q() != null) {
                List<String> listQ = updateIdentityPoolRequest.q();
                awsJsonWriterA.a("SamlProviderARNs");
                awsJsonWriterA.a();
                for (String str2 : listQ) {
                    if (str2 != null) {
                        awsJsonWriterA.b(str2);
                    }
                }
                awsJsonWriterA.b();
            }
            if (updateIdentityPoolRequest.r() != null) {
                Map<String, String> mapR = updateIdentityPoolRequest.r();
                awsJsonWriterA.a("IdentityPoolTags");
                awsJsonWriterA.c();
                for (Map.Entry<String, String> entry2 : mapR.entrySet()) {
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
