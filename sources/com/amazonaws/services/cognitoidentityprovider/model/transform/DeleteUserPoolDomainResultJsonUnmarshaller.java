package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.DeleteUserPoolDomainResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.Unmarshaller;

/* JADX INFO: loaded from: classes.dex */
public class DeleteUserPoolDomainResultJsonUnmarshaller implements Unmarshaller<DeleteUserPoolDomainResult, JsonUnmarshallerContext> {
    private static DeleteUserPoolDomainResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public DeleteUserPoolDomainResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        return new DeleteUserPoolDomainResult();
    }

    public static DeleteUserPoolDomainResultJsonUnmarshaller a() {
        if (a == null) {
            a = new DeleteUserPoolDomainResultJsonUnmarshaller();
        }
        return a;
    }
}
