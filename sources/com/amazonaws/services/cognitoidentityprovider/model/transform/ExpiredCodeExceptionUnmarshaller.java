package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.ExpiredCodeException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class ExpiredCodeExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public ExpiredCodeExceptionUnmarshaller() {
        super(ExpiredCodeException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.b().equals("ExpiredCodeException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* JADX INFO: renamed from: b */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        ExpiredCodeException expiredCodeException = (ExpiredCodeException) super.a(jsonErrorResponse);
        expiredCodeException.c("ExpiredCodeException");
        return expiredCodeException;
    }
}
