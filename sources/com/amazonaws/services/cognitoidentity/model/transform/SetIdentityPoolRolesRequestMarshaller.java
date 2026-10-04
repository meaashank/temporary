package com.amazonaws.services.cognitoidentity.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentity.model.RoleMapping;
import com.amazonaws.services.cognitoidentity.model.SetIdentityPoolRolesRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SetIdentityPoolRolesRequestMarshaller implements Marshaller<Request<SetIdentityPoolRolesRequest>, SetIdentityPoolRolesRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<SetIdentityPoolRolesRequest> a(SetIdentityPoolRolesRequest setIdentityPoolRolesRequest) {
        if (setIdentityPoolRolesRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(SetIdentityPoolRolesRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(setIdentityPoolRolesRequest, "AmazonCognitoIdentity");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityService.SetIdentityPoolRoles");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (setIdentityPoolRolesRequest.h() != null) {
                String strH = setIdentityPoolRolesRequest.h();
                awsJsonWriterA.a("IdentityPoolId");
                awsJsonWriterA.b(strH);
            }
            if (setIdentityPoolRolesRequest.i() != null) {
                Map<String, String> mapI = setIdentityPoolRolesRequest.i();
                awsJsonWriterA.a("Roles");
                awsJsonWriterA.c();
                for (Map.Entry<String, String> entry : mapI.entrySet()) {
                    String value = entry.getValue();
                    if (value != null) {
                        awsJsonWriterA.a(entry.getKey());
                        awsJsonWriterA.b(value);
                    }
                }
                awsJsonWriterA.d();
            }
            if (setIdentityPoolRolesRequest.k() != null) {
                Map<String, RoleMapping> mapK = setIdentityPoolRolesRequest.k();
                awsJsonWriterA.a("RoleMappings");
                awsJsonWriterA.c();
                for (Map.Entry<String, RoleMapping> entry2 : mapK.entrySet()) {
                    RoleMapping value2 = entry2.getValue();
                    if (value2 != null) {
                        awsJsonWriterA.a(entry2.getKey());
                        RoleMappingJsonMarshaller.a().a(value2, awsJsonWriterA);
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
