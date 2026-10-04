package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.InvalidOAuthFlowException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class InvalidOAuthFlowExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidOAuthFlowExceptionUnmarshaller() {
        super(InvalidOAuthFlowException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.b().equals("InvalidOAuthFlowException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* JADX INFO: renamed from: b */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        InvalidOAuthFlowException invalidOAuthFlowException = (InvalidOAuthFlowException) super.a(jsonErrorResponse);
        invalidOAuthFlowException.c("InvalidOAuthFlowException");
        return invalidOAuthFlowException;
    }
}
