package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.AmazonServiceException;
import com.amazonaws.http.JsonErrorResponseHandler;
import com.amazonaws.services.cognitoidentityprovider.model.InvalidUserPoolConfigurationException;
import com.amazonaws.transform.JsonErrorUnmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class InvalidUserPoolConfigurationExceptionUnmarshaller extends JsonErrorUnmarshaller {
    public InvalidUserPoolConfigurationExceptionUnmarshaller() {
        super(InvalidUserPoolConfigurationException.class);
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller
    public boolean a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        return jsonErrorResponse.b().equals("InvalidUserPoolConfigurationException");
    }

    @Override // com.amazonaws.transform.JsonErrorUnmarshaller, com.amazonaws.transform.Unmarshaller
    /* JADX INFO: renamed from: b */
    public AmazonServiceException a(JsonErrorResponseHandler.JsonErrorResponse jsonErrorResponse) {
        InvalidUserPoolConfigurationException invalidUserPoolConfigurationException = (InvalidUserPoolConfigurationException) super.a(jsonErrorResponse);
        invalidUserPoolConfigurationException.c("InvalidUserPoolConfigurationException");
        return invalidUserPoolConfigurationException;
    }
}
