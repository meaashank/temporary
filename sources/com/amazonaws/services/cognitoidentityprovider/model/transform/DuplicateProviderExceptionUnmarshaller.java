package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.DuplicateProviderException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class DuplicateProviderExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public DuplicateProviderExceptionUnmarshaller() {
        super(DuplicateProviderException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.b().equals("DuplicateProviderException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* JADX INFO: renamed from: b */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        DuplicateProviderException duplicateProviderException = (DuplicateProviderException) super.a(jsonErrorResponse);
        duplicateProviderException.c("DuplicateProviderException");
        return duplicateProviderException;
    }
}
