package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.InvalidSmsRoleTrustRelationshipException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class InvalidSmsRoleTrustRelationshipExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidSmsRoleTrustRelationshipExceptionUnmarshaller() {
        super(InvalidSmsRoleTrustRelationshipException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.b().equals("InvalidSmsRoleTrustRelationshipException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* JADX INFO: renamed from: b */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        InvalidSmsRoleTrustRelationshipException invalidSmsRoleTrustRelationshipException = (InvalidSmsRoleTrustRelationshipException) super.a(jsonErrorResponse);
        invalidSmsRoleTrustRelationshipException.c("InvalidSmsRoleTrustRelationshipException");
        return invalidSmsRoleTrustRelationshipException;
    }
}
