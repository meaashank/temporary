package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AdminCreateUserConfigType;
import com.amazonaws.services.cognitoidentityprovider.model.CreateUserPoolRequest;
import com.amazonaws.services.cognitoidentityprovider.model.DeviceConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.EmailConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.LambdaConfigType;
import com.amazonaws.services.cognitoidentityprovider.model.SchemaAttributeType;
import com.amazonaws.services.cognitoidentityprovider.model.SmsConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.UserPoolAddOnsType;
import com.amazonaws.services.cognitoidentityprovider.model.UserPoolPolicyType;
import com.amazonaws.services.cognitoidentityprovider.model.VerificationMessageTemplateType;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class CreateUserPoolRequestMarshaller implements Marshaller<Request<CreateUserPoolRequest>, CreateUserPoolRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<CreateUserPoolRequest> a(CreateUserPoolRequest createUserPoolRequest) {
        if (createUserPoolRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(CreateUserPoolRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(createUserPoolRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.CreateUserPool");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (createUserPoolRequest.h() != null) {
                String strH = createUserPoolRequest.h();
                awsJsonWriterA.a("PoolName");
                awsJsonWriterA.b(strH);
            }
            if (createUserPoolRequest.i() != null) {
                UserPoolPolicyType userPoolPolicyTypeI = createUserPoolRequest.i();
                awsJsonWriterA.a("Policies");
                UserPoolPolicyTypeJsonMarshaller.a().a(userPoolPolicyTypeI, awsJsonWriterA);
            }
            if (createUserPoolRequest.j() != null) {
                LambdaConfigType lambdaConfigTypeJ = createUserPoolRequest.j();
                awsJsonWriterA.a("LambdaConfig");
                LambdaConfigTypeJsonMarshaller.a().a(lambdaConfigTypeJ, awsJsonWriterA);
            }
            if (createUserPoolRequest.k() != null) {
                List<String> listK = createUserPoolRequest.k();
                awsJsonWriterA.a("AutoVerifiedAttributes");
                awsJsonWriterA.a();
                for (String str : listK) {
                    if (str != null) {
                        awsJsonWriterA.b(str);
                    }
                }
                awsJsonWriterA.b();
            }
            if (createUserPoolRequest.l() != null) {
                List<String> listL = createUserPoolRequest.l();
                awsJsonWriterA.a("AliasAttributes");
                awsJsonWriterA.a();
                for (String str2 : listL) {
                    if (str2 != null) {
                        awsJsonWriterA.b(str2);
                    }
                }
                awsJsonWriterA.b();
            }
            if (createUserPoolRequest.m() != null) {
                List<String> listM = createUserPoolRequest.m();
                awsJsonWriterA.a("UsernameAttributes");
                awsJsonWriterA.a();
                for (String str3 : listM) {
                    if (str3 != null) {
                        awsJsonWriterA.b(str3);
                    }
                }
                awsJsonWriterA.b();
            }
            if (createUserPoolRequest.n() != null) {
                String strN = createUserPoolRequest.n();
                awsJsonWriterA.a("SmsVerificationMessage");
                awsJsonWriterA.b(strN);
            }
            if (createUserPoolRequest.o() != null) {
                String strO = createUserPoolRequest.o();
                awsJsonWriterA.a("EmailVerificationMessage");
                awsJsonWriterA.b(strO);
            }
            if (createUserPoolRequest.p() != null) {
                String strP = createUserPoolRequest.p();
                awsJsonWriterA.a("EmailVerificationSubject");
                awsJsonWriterA.b(strP);
            }
            if (createUserPoolRequest.q() != null) {
                VerificationMessageTemplateType verificationMessageTemplateTypeQ = createUserPoolRequest.q();
                awsJsonWriterA.a("VerificationMessageTemplate");
                VerificationMessageTemplateTypeJsonMarshaller.a().a(verificationMessageTemplateTypeQ, awsJsonWriterA);
            }
            if (createUserPoolRequest.r() != null) {
                String strR = createUserPoolRequest.r();
                awsJsonWriterA.a("SmsAuthenticationMessage");
                awsJsonWriterA.b(strR);
            }
            if (createUserPoolRequest.s() != null) {
                String strS = createUserPoolRequest.s();
                awsJsonWriterA.a("MfaConfiguration");
                awsJsonWriterA.b(strS);
            }
            if (createUserPoolRequest.t() != null) {
                DeviceConfigurationType deviceConfigurationTypeT = createUserPoolRequest.t();
                awsJsonWriterA.a("DeviceConfiguration");
                DeviceConfigurationTypeJsonMarshaller.a().a(deviceConfigurationTypeT, awsJsonWriterA);
            }
            if (createUserPoolRequest.u() != null) {
                EmailConfigurationType emailConfigurationTypeU = createUserPoolRequest.u();
                awsJsonWriterA.a("EmailConfiguration");
                EmailConfigurationTypeJsonMarshaller.a().a(emailConfigurationTypeU, awsJsonWriterA);
            }
            if (createUserPoolRequest.v() != null) {
                SmsConfigurationType smsConfigurationTypeV = createUserPoolRequest.v();
                awsJsonWriterA.a("SmsConfiguration");
                SmsConfigurationTypeJsonMarshaller.a().a(smsConfigurationTypeV, awsJsonWriterA);
            }
            if (createUserPoolRequest.w() != null) {
                Map<String, String> mapW = createUserPoolRequest.w();
                awsJsonWriterA.a("UserPoolTags");
                awsJsonWriterA.c();
                for (Map.Entry<String, String> entry : mapW.entrySet()) {
                    String value = entry.getValue();
                    if (value != null) {
                        awsJsonWriterA.a(entry.getKey());
                        awsJsonWriterA.b(value);
                    }
                }
                awsJsonWriterA.d();
            }
            if (createUserPoolRequest.y() != null) {
                AdminCreateUserConfigType adminCreateUserConfigTypeY = createUserPoolRequest.y();
                awsJsonWriterA.a("AdminCreateUserConfig");
                AdminCreateUserConfigTypeJsonMarshaller.a().a(adminCreateUserConfigTypeY, awsJsonWriterA);
            }
            if (createUserPoolRequest.z() != null) {
                List<SchemaAttributeType> listZ = createUserPoolRequest.z();
                awsJsonWriterA.a("Schema");
                awsJsonWriterA.a();
                for (SchemaAttributeType schemaAttributeType : listZ) {
                    if (schemaAttributeType != null) {
                        SchemaAttributeTypeJsonMarshaller.a().a(schemaAttributeType, awsJsonWriterA);
                    }
                }
                awsJsonWriterA.b();
            }
            if (createUserPoolRequest.A() != null) {
                UserPoolAddOnsType userPoolAddOnsTypeA = createUserPoolRequest.A();
                awsJsonWriterA.a("UserPoolAddOns");
                UserPoolAddOnsTypeJsonMarshaller.a().a(userPoolAddOnsTypeA, awsJsonWriterA);
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
