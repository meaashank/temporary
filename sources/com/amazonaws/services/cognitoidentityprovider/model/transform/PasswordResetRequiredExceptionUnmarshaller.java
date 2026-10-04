package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.PasswordResetRequiredException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class PasswordResetRequiredExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public PasswordResetRequiredExceptionUnmarshaller() {
        super(PasswordResetRequiredException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.b().equals("PasswordResetRequiredException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* JADX INFO: renamed from: b */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        PasswordResetRequiredException passwordResetRequiredException = (PasswordResetRequiredException) super.a(jsonErrorResponse);
        passwordResetRequiredException.c("PasswordResetRequiredException");
        return passwordResetRequiredException;
    }
}
