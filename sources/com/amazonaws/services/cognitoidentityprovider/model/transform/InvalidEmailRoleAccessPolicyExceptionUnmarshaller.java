package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.InvalidEmailRoleAccessPolicyException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class InvalidEmailRoleAccessPolicyExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidEmailRoleAccessPolicyExceptionUnmarshaller() {
        super(InvalidEmailRoleAccessPolicyException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.b().equals("InvalidEmailRoleAccessPolicyException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* JADX INFO: renamed from: b */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        InvalidEmailRoleAccessPolicyException invalidEmailRoleAccessPolicyException = (InvalidEmailRoleAccessPolicyException) super.a(jsonErrorResponse);
        invalidEmailRoleAccessPolicyException.c("InvalidEmailRoleAccessPolicyException");
        return invalidEmailRoleAccessPolicyException;
    }
}
