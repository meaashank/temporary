package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class CreateUserImportJobRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public CreateUserImportJobRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public CreateUserImportJobRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public CreateUserImportJobRequest f(String str) {
        this.c = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("JobName: " + h() + ",");
        }
        if (i() != null) {
            sb.append("UserPoolId: " + i() + ",");
        }
        if (j() != null) {
            sb.append("CloudWatchLogsRoleArn: " + j());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() != null ? j().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof CreateUserImportJobRequest)) {
            return false;
        }
        CreateUserImportJobRequest createUserImportJobRequest = (CreateUserImportJobRequest) obj;
        if ((createUserImportJobRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (createUserImportJobRequest.h() != null && !createUserImportJobRequest.h().equals(h())) {
            return false;
        }
        if ((createUserImportJobRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (createUserImportJobRequest.i() != null && !createUserImportJobRequest.i().equals(i())) {
            return false;
        }
        if ((createUserImportJobRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        return createUserImportJobRequest.j() == null || createUserImportJobRequest.j().equals(j());
    }
}
