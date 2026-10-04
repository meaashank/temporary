package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.CodeMismatchException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class CodeMismatchExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public CodeMismatchExceptionUnmarshaller() {
        super(CodeMismatchException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.b().equals("CodeMismatchException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* JADX INFO: renamed from: b */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        CodeMismatchException codeMismatchException = (CodeMismatchException) super.a(jsonErrorResponse);
        codeMismatchException.c("CodeMismatchException");
        return codeMismatchException;
    }
}
