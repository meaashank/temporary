package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public class EventFeedbackType implements Serializable {
    private String a;
    private String b;
    private Date c;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public EventFeedbackType b(String str) {
        this.a = str;
        return this;
    }

    public void a(FeedbackValueType feedbackValueType) {
        this.a = feedbackValueType.toString();
    }

    public EventFeedbackType b(FeedbackValueType feedbackValueType) {
        this.a = feedbackValueType.toString();
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public EventFeedbackType d(String str) {
        this.b = str;
        return this;
    }

    public Date c() {
        return this.c;
    }

    public void a(Date date) {
        this.c = date;
    }

    public EventFeedbackType b(Date date) {
        this.c = date;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("FeedbackValue: " + a() + ",");
        }
        if (b() != null) {
            sb.append("Provider: " + b() + ",");
        }
        if (c() != null) {
            sb.append("FeedbackDate: " + c());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() != null ? c().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof EventFeedbackType)) {
            return false;
        }
        EventFeedbackType eventFeedbackType = (EventFeedbackType) obj;
        if ((eventFeedbackType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (eventFeedbackType.a() != null && !eventFeedbackType.a().equals(a())) {
            return false;
        }
        if ((eventFeedbackType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (eventFeedbackType.b() != null && !eventFeedbackType.b().equals(b())) {
            return false;
        }
        if ((eventFeedbackType.c() == null) ^ (c() == null)) {
            return false;
        }
        return eventFeedbackType.c() == null || eventFeedbackType.c().equals(c());
    }
}
