package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AnalyticsMetadataType;
import com.amazonaws.services.cognitoidentityprovider.model.AttributeType;
import com.amazonaws.services.cognitoidentityprovider.model.SignUpRequest;
import com.amazonaws.services.cognitoidentityprovider.model.UserContextDataType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class SignUpRequestMarshaller implements Marshaller<Request<SignUpRequest>, SignUpRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<SignUpRequest> a(SignUpRequest signUpRequest) {
        if (signUpRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(SignUpRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(signUpRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.SignUp");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (signUpRequest.h() != null) {
                String strH = signUpRequest.h();
                awsJsonWriterA.a("ClientId");
                awsJsonWriterA.b(strH);
            }
            if (signUpRequest.i() != null) {
                String strI = signUpRequest.i();
                awsJsonWriterA.a("SecretHash");
                awsJsonWriterA.b(strI);
            }
            if (signUpRequest.j() != null) {
                String strJ = signUpRequest.j();
                awsJsonWriterA.a("Username");
                awsJsonWriterA.b(strJ);
            }
            if (signUpRequest.k() != null) {
                String strK = signUpRequest.k();
                awsJsonWriterA.a("Password");
                awsJsonWriterA.b(strK);
            }
            if (signUpRequest.l() != null) {
                List<AttributeType> listL = signUpRequest.l();
                awsJsonWriterA.a("UserAttributes");
                awsJsonWriterA.a();
                for (AttributeType attributeType : listL) {
                    if (attributeType != null) {
                        AttributeTypeJsonMarshaller.a().a(attributeType, awsJsonWriterA);
                    }
                }
                awsJsonWriterA.b();
            }
            if (signUpRequest.m() != null) {
                List<AttributeType> listM = signUpRequest.m();
                awsJsonWriterA.a("ValidationData");
                awsJsonWriterA.a();
                for (AttributeType attributeType2 : listM) {
                    if (attributeType2 != null) {
                        AttributeTypeJsonMarshaller.a().a(attributeType2, awsJsonWriterA);
                    }
                }
                awsJsonWriterA.b();
            }
            if (signUpRequest.n() != null) {
                AnalyticsMetadataType analyticsMetadataTypeN = signUpRequest.n();
                awsJsonWriterA.a("AnalyticsMetadata");
                AnalyticsMetadataTypeJsonMarshaller.a().a(analyticsMetadataTypeN, awsJsonWriterA);
            }
            if (signUpRequest.o() != null) {
                UserContextDataType userContextDataTypeO = signUpRequest.o();
                awsJsonWriterA.a("UserContextData");
                UserContextDataTypeJsonMarshaller.a().a(userContextDataTypeO, awsJsonWriterA);
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
