package com.amazonaws.services.cognitoidentityprovider.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;

/* JADX INFO: loaded from: classes.dex */
public class AdminUpdateAuthEventFeedbackRequest extends AmazonWebServiceRequest implements Serializable {
    private String a;
    private String b;
    private String c;
    private String d;

    public String h() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AdminUpdateAuthEventFeedbackRequest b(String str) {
        this.a = str;
        return this;
    }

    public String i() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public AdminUpdateAuthEventFeedbackRequest d(String str) {
        this.b = str;
        return this;
    }

    public String j() {
        return this.c;
    }

    public void e(String str) {
        this.c = str;
    }

    public AdminUpdateAuthEventFeedbackRequest f(String str) {
        this.c = str;
        return this;
    }

    public String k() {
        return this.d;
    }

    public void g(String str) {
        this.d = str;
    }

    public AdminUpdateAuthEventFeedbackRequest h(String str) {
        this.d = str;
        return this;
    }

    public void a(FeedbackValueType feedbackValueType) {
        this.d = feedbackValueType.toString();
    }

    public AdminUpdateAuthEventFeedbackRequest b(FeedbackValueType feedbackValueType) {
        this.d = feedbackValueType.toString();
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
            sb.append("FeedbackValue: " + k());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((h() == null ? 0 : h().hashCode()) + 31) * 31) + (i() == null ? 0 : i().hashCode())) * 31) + (j() == null ? 0 : j().hashCode())) * 31) + (k() != null ? k().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AdminUpdateAuthEventFeedbackRequest)) {
            return false;
        }
        AdminUpdateAuthEventFeedbackRequest adminUpdateAuthEventFeedbackRequest = (AdminUpdateAuthEventFeedbackRequest) obj;
        if ((adminUpdateAuthEventFeedbackRequest.h() == null) ^ (h() == null)) {
            return false;
        }
        if (adminUpdateAuthEventFeedbackRequest.h() != null && !adminUpdateAuthEventFeedbackRequest.h().equals(h())) {
            return false;
        }
        if ((adminUpdateAuthEventFeedbackRequest.i() == null) ^ (i() == null)) {
            return false;
        }
        if (adminUpdateAuthEventFeedbackRequest.i() != null && !adminUpdateAuthEventFeedbackRequest.i().equals(i())) {
            return false;
        }
        if ((adminUpdateAuthEventFeedbackRequest.j() == null) ^ (j() == null)) {
            return false;
        }
        if (adminUpdateAuthEventFeedbackRequest.j() != null && !adminUpdateAuthEventFeedbackRequest.j().equals(j())) {
            return false;
        }
        if ((adminUpdateAuthEventFeedbackRequest.k() == null) ^ (k() == null)) {
            return false;
        }
        return adminUpdateAuthEventFeedbackRequest.k() == null || adminUpdateAuthEventFeedbackRequest.k().equals(k());
    }
}
