package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class UpdateAuthEventFeedbackRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;
    private String d;
    private String e;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public UpdateAuthEventFeedbackRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public UpdateAuthEventFeedbackRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public UpdateAuthEventFeedbackRequest f(String str) {
        this.c = str;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public UpdateAuthEventFeedbackRequest h(String str) {
        this.d = str;
        return this;
    }

    public String l() {
        return this.e;
    }

    public void i(String str) {
        this.e = str;
    }

    public UpdateAuthEventFeedbackRequest j(String str) {
        this.e = str;
        return this;
    }

    public void a(FeedbackValueType feedbackValueType) {
        this.e = feedbackValueType.toString();
    }

    public UpdateAuthEventFeedbackRequest b(FeedbackValueType feedbackValueType) {
        this.e = feedbackValueType.toString();
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (h() != null) {
            sb.append("UserPoolId: " + h() + ",");
        }
        if (i() != null) {
            sb.append("Username: " + i() + ",");
        }
        if (j() != null) {
            sb.append("EventId: " + j() + ",");
        }
        if (k() != null) {
            sb.append("FeedbackToken: " + k() + ",");
        }
        if (l() != null) {
            sb.append("FeedbackValue: " + l());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() == null ? 0 : k().hashCode())) * 31) + (l() != null ? l().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof UpdateAuthEventFeedbackRequest)) {
            return false;
        }
        UpdateAuthEventFeedbackRequest updateAuthEventFeedbackRequest = (UpdateAuthEventFeedbackRequest) obj;
        if ((updateAuthEventFeedbackRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (updateAuthEventFeedbackRequest.h() != null && !updateAuthEventFeedbackRequest.h().equals(h())) {
            return false;
        }
        if ((updateAuthEventFeedbackRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (updateAuthEventFeedbackRequest.i() != null && !updateAuthEventFeedbackRequest.i().equals(i())) {
            return false;
        }
        if ((updateAuthEventFeedbackRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (updateAuthEventFeedbackRequest.j() != null && !updateAuthEventFeedbackRequest.j().equals(j())) {
            return false;
        }
        if ((updateAuthEventFeedbackRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        if (updateAuthEventFeedbackRequest.k() != null && !updateAuthEventFeedbackRequest.k().equals(k())) {
            return false;
        }
        if ((updateAuthEventFeedbackRequest.l() == null) ^ (l() == null)) {
            return false;
        }
        return updateAuthEventFeedbackRequest.l() == null || updateAuthEventFeedbackRequest.l().equals(l());
    }
}
