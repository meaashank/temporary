package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.TooManyRequestsException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class TooManyRequestsExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public TooManyRequestsExceptionUnmarshaller() {
        super(TooManyRequestsException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.b().equals("TooManyRequestsException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* JADX INFO: renamed from: b */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        TooManyRequestsException tooManyRequestsException = (TooManyRequestsException) super.a(jsonErrorResponse);
        tooManyRequestsException.c("TooManyRequestsException");
        return tooManyRequestsException;
    }
}
