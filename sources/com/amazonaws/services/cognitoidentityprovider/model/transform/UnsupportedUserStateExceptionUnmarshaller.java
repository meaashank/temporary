package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.UnsupportedUserStateException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class UnsupportedUserStateExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public UnsupportedUserStateExceptionUnmarshaller() {
        super(UnsupportedUserStateException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.b().equals("UnsupportedUserStateException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* JADX INFO: renamed from: b */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        UnsupportedUserStateException unsupportedUserStateException = (UnsupportedUserStateException) super.a(jsonErrorResponse);
        unsupportedUserStateException.c("UnsupportedUserStateException");
        return unsupportedUserStateException;
    }
}
