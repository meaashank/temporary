package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AdminCreateUserRequest;
import com.amazonaws.services.cognitoidentityprovider.model.AttributeType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AdminCreateUserRequestMarshaller implements Marshaller<Request<AdminCreateUserRequest>, AdminCreateUserRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<AdminCreateUserRequest> a(AdminCreateUserRequest adminCreateUserRequest) {
        if (adminCreateUserRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(AdminCreateUserRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(adminCreateUserRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.AdminCreateUser");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (adminCreateUserRequest.h() != null) {
                String strH = adminCreateUserRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (adminCreateUserRequest.i() != null) {
                String strI = adminCreateUserRequest.i();
                awsJsonWriterA.a("Username");
                awsJsonWriterA.b(strI);
            }
            if (adminCreateUserRequest.j() != null) {
                List<AttributeType> listJ = adminCreateUserRequest.j();
                awsJsonWriterA.a("UserAttributes");
                awsJsonWriterA.a();
                for (AttributeType attributeType : listJ) {
                    if (attributeType != null) {
                        AttributeTypeJsonMarshaller.a().a(attributeType, awsJsonWriterA);
                    }
                }
                awsJsonWriterA.b();
            }
            if (adminCreateUserRequest.k() != null) {
                List<AttributeType> listK = adminCreateUserRequest.k();
                awsJsonWriterA.a("ValidationData");
                awsJsonWriterA.a();
                for (AttributeType attributeType2 : listK) {
                    if (attributeType2 != null) {
                        AttributeTypeJsonMarshaller.a().a(attributeType2, awsJsonWriterA);
                    }
                }
                awsJsonWriterA.b();
            }
            if (adminCreateUserRequest.l() != null) {
                String strL = adminCreateUserRequest.l();
                awsJsonWriterA.a("TemporaryPassword");
                awsJsonWriterA.b(strL);
            }
            if (adminCreateUserRequest.n() != null) {
                Boolean boolN = adminCreateUserRequest.n();
                awsJsonWriterA.a("ForceAliasCreation");
                awsJsonWriterA.a(boolN.booleanValue());
            }
            if (adminCreateUserRequest.o() != null) {
                String strO = adminCreateUserRequest.o();
                awsJsonWriterA.a("MessageAction");
                awsJsonWriterA.b(strO);
            }
            if (adminCreateUserRequest.p() != null) {
                List<String> listP = adminCreateUserRequest.p();
                awsJsonWriterA.a("DesiredDeliveryMediums");
                awsJsonWriterA.a();
                for (String str : listP) {
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
