package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.PreconditionNotMetException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class PreconditionNotMetExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public PreconditionNotMetExceptionUnmarshaller() {
        super(PreconditionNotMetException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.b().equals("PreconditionNotMetException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* JADX INFO: renamed from: b */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        PreconditionNotMetException preconditionNotMetException = (PreconditionNotMetException) super.a(jsonErrorResponse);
        preconditionNotMetException.c("PreconditionNotMetException");
        return preconditionNotMetException;
    }
}
