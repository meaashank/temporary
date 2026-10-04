package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.UserImportInProgressException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class UserImportInProgressExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public UserImportInProgressExceptionUnmarshaller() {
        super(UserImportInProgressException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.b().equals("UserImportInProgressException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* JADX INFO: renamed from: b */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        UserImportInProgressException userImportInProgressException = (UserImportInProgressException) super.a(jsonErrorResponse);
        userImportInProgressException.c("UserImportInProgressException");
        return userImportInProgressException;
    }
}
