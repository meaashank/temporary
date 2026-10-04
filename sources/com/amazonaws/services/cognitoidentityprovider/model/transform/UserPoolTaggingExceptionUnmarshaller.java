package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.UserPoolTaggingException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class UserPoolTaggingExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public UserPoolTaggingExceptionUnmarshaller() {
        super(UserPoolTaggingException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.b().equals("UserPoolTaggingException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* JADX INFO: renamed from: b */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        UserPoolTaggingException userPoolTaggingException = (UserPoolTaggingException) super.a(jsonErrorResponse);
        userPoolTaggingException.c("UserPoolTaggingException");
        return userPoolTaggingException;
    }
}
