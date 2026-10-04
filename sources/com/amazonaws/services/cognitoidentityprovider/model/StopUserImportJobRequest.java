package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class StopUserImportJobRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public StopUserImportJobRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public StopUserImportJobRequest d(String str) {
        this.b = str;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("JobId: " + i());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() != null ? i().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof StopUserImportJobRequest)) {
            return false;
        }
        StopUserImportJobRequest stopUserImportJobRequest = (StopUserImportJobRequest) obj;
        if ((stopUserImportJobRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (stopUserImportJobRequest.h() != null && !stopUserImportJobRequest.h().equals(h())) {
            return false;
        }
        if ((stopUserImportJobRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        return stopUserImportJobRequest.i() == null || stopUserImportJobRequest.i().equals(i());
    }
}
