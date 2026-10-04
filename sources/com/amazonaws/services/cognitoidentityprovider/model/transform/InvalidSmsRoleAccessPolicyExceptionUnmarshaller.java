package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.InvalidSmsRoleAccessPolicyException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class InvalidSmsRoleAccessPolicyExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidSmsRoleAccessPolicyExceptionUnmarshaller() {
        super(InvalidSmsRoleAccessPolicyException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.b().equals("InvalidSmsRoleAccessPolicyException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* JADX INFO: renamed from: b */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        InvalidSmsRoleAccessPolicyException invalidSmsRoleAccessPolicyException = (InvalidSmsRoleAccessPolicyException) super.a(jsonErrorResponse);
        invalidSmsRoleAccessPolicyException.c("InvalidSmsRoleAccessPolicyException");
        return invalidSmsRoleAccessPolicyException;
    }
}
