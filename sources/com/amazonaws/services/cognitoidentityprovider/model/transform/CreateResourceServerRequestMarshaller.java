package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.CreateResourceServerRequest;
import com.amazonaws.services.cognitoidentityprovider.model.ResourceServerScopeType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;
import org.apache.xerces.impl.xs.SchemaSymbols;

/* JADX INFO: loaded from: classes.dex */
public class CreateResourceServerRequestMarshaller implements Marshaller<Request<CreateResourceServerRequest>, CreateResourceServerRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<CreateResourceServerRequest> a(CreateResourceServerRequest createResourceServerRequest) {
        if (createResourceServerRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(CreateResourceServerRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(createResourceServerRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.CreateResourceServer");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (createResourceServerRequest.h() != null) {
                String strH = createResourceServerRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (createResourceServerRequest.i() != null) {
                String strI = createResourceServerRequest.i();
                awsJsonWriterA.a("Identifier");
                awsJsonWriterA.b(strI);
            }
            if (createResourceServerRequest.j() != null) {
                String strJ = createResourceServerRequest.j();
                awsJsonWriterA.a(SchemaSymbols.ATTVAL_NAME);
                awsJsonWriterA.b(strJ);
            }
            if (createResourceServerRequest.k() != null) {
                List<ResourceServerScopeType> listK = createResourceServerRequest.k();
                awsJsonWriterA.a("Scopes");
                awsJsonWriterA.a();
                for (ResourceServerScopeType resourceServerScopeType : listK) {
                    if (resourceServerScopeType != null) {
                        ResourceServerScopeTypeJsonMarshaller.a().a(resourceServerScopeType, awsJsonWriterA);
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
