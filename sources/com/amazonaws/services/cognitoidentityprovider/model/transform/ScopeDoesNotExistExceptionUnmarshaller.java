package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.ScopeDoesNotExistException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class ScopeDoesNotExistExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public ScopeDoesNotExistExceptionUnmarshaller() {
        super(ScopeDoesNotExistException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.b().equals("ScopeDoesNotExistException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* JADX INFO: renamed from: b */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        ScopeDoesNotExistException scopeDoesNotExistException = (ScopeDoesNotExistException) super.a(jsonErrorResponse);
        scopeDoesNotExistException.c("ScopeDoesNotExistException");
        return scopeDoesNotExistException;
    }
}
