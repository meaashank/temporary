package com.amazonaws.services.cognitoidentityprovider.model.transform;

import com.amazonaws.services.cognitoidentityprovider.model.ListUserImportJobsResult;
import com.amazonaws.transform.JsonUnmarshallerContext;
import com.amazonaws.transform.ListUnmarshaller;
import com.amazonaws.transform.SimpleTypeJsonUnmarshallers;
import com.amazonaws.transform.Unmarshaller;
import com.amazonaws.util.json.AwsJsonReader;

/* JADX INFO: loaded from: classes.dex */
public class ListUserImportJobsResultJsonUnmarshaller implements Unmarshaller<ListUserImportJobsResult, JsonUnmarshallerContext> {
    private static ListUserImportJobsResultJsonUnmarshaller a;

    @Override // com.amazonaws.transform.Unmarshaller
    public ListUserImportJobsResult a(JsonUnmarshallerContext jsonUnmarshallerContext) {
        ListUserImportJobsResult listUserImportJobsResult = new ListUserImportJobsResult();
        AwsJsonReader awsJsonReaderA = jsonUnmarshallerContext.a();
        awsJsonReaderA.c();
        while (awsJsonReaderA.f()) {
            String strG = awsJsonReaderA.g();
            if (strG.equals("UserImportJobs")) {
                listUserImportJobsResult.a(new ListUnmarshaller(UserImportJobTypeJsonUnmarshaller.a()).a(jsonUnmarshallerContext));
            } else if (strG.equals("PaginationToken")) {
                listUserImportJobsResult.a(SimpleTypeJsonUnmarshallers.StringJsonUnmarshaller.a().a(jsonUnmarshallerContext));
            } else {
                awsJsonReaderA.j();
            }
        }
        awsJsonReaderA.d();
        return listUserImportJobsResult;
    }

    public static ListUserImportJobsResultJsonUnmarshaller a() {
        if (a == null) {
            a = new ListUserImportJobsResultJsonUnmarshaller();
        }
        return a;
    }
}
