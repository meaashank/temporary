package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.DefaultRequest;
import com.amazonaws.Request;
import com.amazonaws.http.HttpMethodName;
import com.amazonaws.services.cognitoidentityprovider.model.AccountTakeoverRiskConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.CompromisedCredentialsRiskConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.RiskExceptionConfigurationType;
import com.amazonaws.services.cognitoidentityprovider.model.SetRiskConfigurationRequest;
import com.amazonaws.transform.Marshaller;
import com.amazonaws.util.StringInputStream;
import com.amazonaws.util.StringUtils;
import com.amazonaws.util.json.AwsJsonWriter;
import com.amazonaws.util.json.JsonUtils;
import java.io.StringWriter;

/* JADX INFO: loaded from: classes.dex */
public class SetRiskConfigurationRequestMarshaller implements Marshaller<Request<SetRiskConfigurationRequest>, SetRiskConfigurationRequest> {
    @Override // com.amazonaws.transform.Marshaller
    public Request<SetRiskConfigurationRequest> a(SetRiskConfigurationRequest setRiskConfigurationRequest) {
        if (setRiskConfigurationRequest == null) {
            throw new AmazonClientException("Invalid argument passed to marshall(SetRiskConfigurationRequest)");
        }
        DefaultRequest defaultRequest = new DefaultRequest(setRiskConfigurationRequest, "AmazonCognitoIdentityProvider");
        defaultRequest.a("X-Amz-Target", "AWSCognitoIdentityProviderService.SetRiskConfiguration");
        defaultRequest.a(HttpMethodName.POST);
        defaultRequest.a("/");
        try {
            StringWriter stringWriter = new StringWriter();
            AwsJsonWriter awsJsonWriterA = JsonUtils.a(stringWriter);
            awsJsonWriterA.c();
            if (setRiskConfigurationRequest.h() != null) {
                String strH = setRiskConfigurationRequest.h();
                awsJsonWriterA.a("UserPoolId");
                awsJsonWriterA.b(strH);
            }
            if (setRiskConfigurationRequest.i() != null) {
                String strI = setRiskConfigurationRequest.i();
                awsJsonWriterA.a("ClientId");
                awsJsonWriterA.b(strI);
            }
            if (setRiskConfigurationRequest.j() != null) {
                CompromisedCredentialsRiskConfigurationType compromisedCredentialsRiskConfigurationTypeJ = setRiskConfigurationRequest.j();
                awsJsonWriterA.a("CompromisedCredentialsRiskConfiguration");
                CompromisedCredentialsRiskConfigurationTypeJsonMarshaller.a().a(compromisedCredentialsRiskConfigurationTypeJ, awsJsonWriterA);
            }
            if (setRiskConfigurationRequest.k() != null) {
                AccountTakeoverRiskConfigurationType accountTakeoverRiskConfigurationTypeK = setRiskConfigurationRequest.k();
                awsJsonWriterA.a("AccountTakeoverRiskConfiguration");
                AccountTakeoverRiskConfigurationTypeJsonMarshaller.a().a(accountTakeoverRiskConfigurationTypeK, awsJsonWriterA);
            }
            if (setRiskConfigurationRequest.l() != null) {
                RiskExceptionConfigurationType riskExceptionConfigurationTypeL = setRiskConfigurationRequest.l();
                awsJsonWriterA.a("RiskExceptionConfiguration");
                RiskExceptionConfigurationTypeJsonMarshaller.a().a(riskExceptionConfigurationTypeL, awsJsonWriterA);
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
