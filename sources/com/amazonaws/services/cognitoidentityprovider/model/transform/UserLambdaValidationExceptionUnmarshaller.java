package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.UserLambdaValidationException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class UserLambdaValidationExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public UserLambdaValidationExceptionUnmarshaller() {
        super(UserLambdaValidationException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.b().equals("UserLambdaValidationException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* JADX INFO: renamed from: b */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        UserLambdaValidationException userLambdaValidationException = (UserLambdaValidationException) super.a(jsonErrorResponse);
        userLambdaValidationException.c("UserLambdaValidationException");
        return userLambdaValidationException;
    }
}
