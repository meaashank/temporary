package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AdminCreateUserConfigType;
import com.amazonaws.services.cognitoidentityprovider.model.DeviceConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.EmailConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.LambdaConfigType;
import com.amazonaws.services.cognitoidentityprovider.model.SmsConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.UpdateUserPoolRequest;
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
public class UpdateUserPoolRequestMarshaller implements Marshaller<Request<UpdateUserPoolRequest>, UpdateUserPoolRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<UpdateUserPoolRequest> a(UpdateUserPoolRequest updateUserPoolRequest) {
        if (updateUserPoolRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(UpdateUserPoolRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(updateUserPoolRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.UpdateUserPool");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (updateUserPoolRequest.h() != null) {
                String strH = updateUserPoolRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (updateUserPoolRequest.i() != null) {
                UserPoolPolicyType userPoolPolicyTypeI = updateUserPoolRequest.i();
                awsJsonWriterA.a("Policies");
                UserPoolPolicyTypeJsonMarshaller.a().a(userPoolPolicyTypeI, awsJsonWriterA);
            }
            if (updateUserPoolRequest.j() != null) {
                LambdaConfigType lambdaConfigTypeJ = updateUserPoolRequest.j();
                awsJsonWriterA.a("LambdaConfig");
                LambdaConfigTypeJsonMarshaller.a().a(lambdaConfigTypeJ, awsJsonWriterA);
            }
            if (updateUserPoolRequest.k() != null) {
                List<String> listK = updateUserPoolRequest.k();
                awsJsonWriterA.a("AutoVerifiedAttributes");
                awsJsonWriterA.a();
                for (String str : listK) {
                    if (str != null) {
                        awsJsonWriterA.b(str);
                    }
                }
                awsJsonWriterA.b();
            }
            if (updateUserPoolRequest.l() != null) {
                String strL = updateUserPoolRequest.l();
                awsJsonWriterA.a("SmsVerificationMessage");
                awsJsonWriterA.b(strL);
            }
            if (updateUserPoolRequest.m() != null) {
                String strM = updateUserPoolRequest.m();
                awsJsonWriterA.a("EmailVerificationMessage");
                awsJsonWriterA.b(strM);
            }
            if (updateUserPoolRequest.n() != null) {
                String strN = updateUserPoolRequest.n();
                awsJsonWriterA.a("EmailVerificationSubject");
                awsJsonWriterA.b(strN);
            }
            if (updateUserPoolRequest.o() != null) {
                VerificationMessageTemplateType verificationMessageTemplateTypeO = updateUserPoolRequest.o();
                awsJsonWriterA.a("VerificationMessageTemplate");
                VerificationMessageTemplateTypeJsonMarshaller.a().a(verificationMessageTemplateTypeO, awsJsonWriterA);
            }
            if (updateUserPoolRequest.p() != null) {
                String strP = updateUserPoolRequest.p();
                awsJsonWriterA.a("SmsAuthenticationMessage");
                awsJsonWriterA.b(strP);
            }
            if (updateUserPoolRequest.q() != null) {
                String strQ = updateUserPoolRequest.q();
                awsJsonWriterA.a("MfaConfiguration");
                awsJsonWriterA.b(strQ);
            }
            if (updateUserPoolRequest.r() != null) {
                DeviceConfigurationType deviceConfigurationTypeR = updateUserPoolRequest.r();
                awsJsonWriterA.a("DeviceConfiguration");
                DeviceConfigurationTypeJsonMarshaller.a().a(deviceConfigurationTypeR, awsJsonWriterA);
            }
            if (updateUserPoolRequest.s() != null) {
                EmailConfigurationType emailConfigurationTypeS = updateUserPoolRequest.s();
                awsJsonWriterA.a("EmailConfiguration");
                EmailConfigurationTypeJsonMarshaller.a().a(emailConfigurationTypeS, awsJsonWriterA);
            }
            if (updateUserPoolRequest.t() != null) {
                SmsConfigurationType smsConfigurationTypeT = updateUserPoolRequest.t();
                awsJsonWriterA.a("SmsConfiguration");
                SmsConfigurationTypeJsonMarshaller.a().a(smsConfigurationTypeT, awsJsonWriterA);
            }
            if (updateUserPoolRequest.u() != null) {
                Map<String, String> mapU = updateUserPoolRequest.u();
                awsJsonWriterA.a("UserPoolTags");
                awsJsonWriterA.c();
                for (Map.Entry<String, String> entry : mapU.entrySet()) {
                    String value = entry.getValue();
                    if (value != null) {
                        awsJsonWriterA.a(entry.getKey());
                        awsJsonWriterA.b(value);
                    }
                }
                awsJsonWriterA.d();
            }
            if (updateUserPoolRequest.w() != null) {
                AdminCreateUserConfigType adminCreateUserConfigTypeW = updateUserPoolRequest.w();
                awsJsonWriterA.a("AdminCreateUserConfig");
                AdminCreateUserConfigTypeJsonMarshaller.a().a(adminCreateUserConfigTypeW, awsJsonWriterA);
            }
            if (updateUserPoolRequest.x() != null) {
                UserPoolAddOnsType userPoolAddOnsTypeX = updateUserPoolRequest.x();
                awsJsonWriterA.a("UserPoolAddOns");
                UserPoolAddOnsTypeJsonMarshaller.a().a(userPoolAddOnsTypeX, awsJsonWriterA);
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
