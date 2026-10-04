package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.UnexpectedLambdaException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class UnexpectedLambdaExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public UnexpectedLambdaExceptionUnmarshaller() {
        super(UnexpectedLambdaException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.b().equals("UnexpectedLambdaException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* JADX INFO: renamed from: b */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        UnexpectedLambdaException unexpectedLambdaException = (UnexpectedLambdaException) super.a(jsonErrorResponse);
        unexpectedLambdaException.c("UnexpectedLambdaException");
        return unexpectedLambdaException;
    }
}
