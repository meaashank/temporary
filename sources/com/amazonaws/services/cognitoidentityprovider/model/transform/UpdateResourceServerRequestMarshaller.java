package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.ResourceServerScopeType;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateResourceServerRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;
import org.apache.xerces.impl.xs.SchemaSymbols;

/* JADX INFO: loaded from: classes.dex */
public class UpdateResourceServerRequestMarshaller implements Marshaller<Request<UpdateResourceServerRequest>, UpdateResourceServerRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<UpdateResourceServerRequest> a(UpdateResourceServerRequest updateResourceServerRequest) {
        if (updateResourceServerRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(UpdateResourceServerRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(updateResourceServerRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.UpdateResourceServer");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (updateResourceServerRequest.h() != null) {
                String strH = updateResourceServerRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (updateResourceServerRequest.i() != null) {
                String strI = updateResourceServerRequest.i();
                awsJsonWriterA.a("Identifier");
                awsJsonWriterA.b(strI);
            }
            if (updateResourceServerRequest.j() != null) {
                String strJ = updateResourceServerRequest.j();
                awsJsonWriterA.a(SchemaSymbols.ATTVAL_NAME);
                awsJsonWriterA.b(strJ);
            }
            if (updateResourceServerRequest.k() != null) {
                List<ResourceServerScopeType> listK = updateResourceServerRequest.k();
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
