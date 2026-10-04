package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.UserNotConfirmedException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class UserNotConfirmedExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public UserNotConfirmedExceptionUnmarshaller() {
        super(UserNotConfirmedException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.b().equals("UserNotConfirmedException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* JADX INFO: renamed from: b */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        UserNotConfirmedException userNotConfirmedException = (UserNotConfirmedException) super.a(jsonErrorResponse);
        userNotConfirmedException.c("UserNotConfirmedException");
        return userNotConfirmedException;
    }
}
