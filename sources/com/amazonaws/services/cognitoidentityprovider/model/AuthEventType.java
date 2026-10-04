package com.amazonaws.services.cognitoidentityprovider.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class AuthEventType implements Serializable {
    private String a;
    private String b;
    private Date c;
    private String d;
    private EventRiskType e;
    private List<ChallengeResponseType> f;
    private EventContextDataType g;
    private EventFeedbackType h;

    public String a() {
        return this.a;
    }

    public void a(String str) {
        this.a = str;
    }

    public AuthEventType b(String str) {
        this.a = str;
        return this;
    }

    public String b() {
        return this.b;
    }

    public void c(String str) {
        this.b = str;
    }

    public AuthEventType d(String str) {
        this.b = str;
        return this;
    }

    public void a(EventType eventType) {
        this.b = eventType.toString();
    }

    public AuthEventType b(EventType eventType) {
        this.b = eventType.toString();
        return this;
    }

    public Date c() {
        return this.c;
    }

    public void a(Date date) {
        this.c = date;
    }

    public AuthEventType b(Date date) {
        this.c = date;
        return this;
    }

    public String d() {
        return this.d;
    }

    public void e(String str) {
        this.d = str;
    }

    public AuthEventType f(String str) {
        this.d = str;
        return this;
    }

    public void a(EventResponseType eventResponseType) {
        this.d = eventResponseType.toString();
    }

    public AuthEventType b(EventResponseType eventResponseType) {
        this.d = eventResponseType.toString();
        return this;
    }

    public EventRiskType e() {
        return this.e;
    }

    public void a(EventRiskType eventRiskType) {
        this.e = eventRiskType;
    }

    public AuthEventType b(EventRiskType eventRiskType) {
        this.e = eventRiskType;
        return this;
    }

    public List<ChallengeResponseType> f() {
        return this.f;
    }

    public void a(Collection<ChallengeResponseType> collection) {
        if (collection == null) {
            this.f = null;
        } else {
            this.f = new ArrayList(collection);
        }
    }

    public AuthEventType a(ChallengeResponseType... challengeResponseTypeArr) {
        if (f() == null) {
            this.f = new ArrayList(challengeResponseTypeArr.length);
        }
        for (ChallengeResponseType challengeResponseType : challengeResponseTypeArr) {
            this.f.add(challengeResponseType);
        }
        return this;
    }

    public AuthEventType b(Collection<ChallengeResponseType> collection) {
        a(collection);
        return this;
    }

    public EventContextDataType g() {
        return this.g;
    }

    public void a(EventContextDataType eventContextDataType) {
        this.g = eventContextDataType;
    }

    public AuthEventType b(EventContextDataType eventContextDataType) {
        this.g = eventContextDataType;
        return this;
    }

    public EventFeedbackType h() {
        return this.h;
    }

    public void a(EventFeedbackType eventFeedbackType) {
        this.h = eventFeedbackType;
    }

    public AuthEventType b(EventFeedbackType eventFeedbackType) {
        this.h = eventFeedbackType;
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{");
        if (a() != null) {
            sb.append("EventId: " + a() + ",");
        }
        if (b() != null) {
            sb.append("EventType: " + b() + ",");
        }
        if (c() != null) {
            sb.append("CreationDate: " + c() + ",");
        }
        if (d() != null) {
            sb.append("EventResponse: " + d() + ",");
        }
        if (e() != null) {
            sb.append("EventRisk: " + e() + ",");
        }
        if (f() != null) {
            sb.append("ChallengeResponses: " + f() + ",");
        }
        if (g() != null) {
            sb.append("EventContextData: " + g() + ",");
        }
        if (h() != null) {
            sb.append("EventFeedback: " + h());
        }
        sb.append("}");
        return sb.toString();
    }

    public int hashCode() {
        return (((((((((((((((a() == null ? 0 : a().hashCode()) + 31) * 31) + (b() == null ? 0 : b().hashCode())) * 31) + (c() == null ? 0 : c().hashCode())) * 31) + (d() == null ? 0 : d().hashCode())) * 31) + (e() == null ? 0 : e().hashCode())) * 31) + (f() == null ? 0 : f().hashCode())) * 31) + (g() == null ? 0 : g().hashCode())) * 31) + (h() != null ? h().hashCode() : 0);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof AuthEventType)) {
            return false;
        }
        AuthEventType authEventType = (AuthEventType) obj;
        if ((authEventType.a() == null) ^ (a() == null)) {
            return false;
        }
        if (authEventType.a() != null && !authEventType.a().equals(a())) {
            return false;
        }
        if ((authEventType.b() == null) ^ (b() == null)) {
            return false;
        }
        if (authEventType.b() != null && !authEventType.b().equals(b())) {
            return false;
        }
        if ((authEventType.c() == null) ^ (c() == null)) {
            return false;
        }
        if (authEventType.c() != null && !authEventType.c().equals(c())) {
            return false;
        }
        if ((authEventType.d() == null) ^ (d() == null)) {
            return false;
        }
        if (authEventType.d() != null && !authEventType.d().equals(d())) {
            return false;
        }
        if ((authEventType.e() == null) ^ (e() == null)) {
            return false;
        }
        if (authEventType.e() != null && !authEventType.e().equals(e())) {
            return false;
        }
        if ((authEventType.f() == null) ^ (f() == null)) {
            return false;
        }
        if (authEventType.f() != null && !authEventType.f().equals(f())) {
            return false;
        }
        if ((authEventType.g() == null) ^ (g() == null)) {
            return false;
        }
        if (authEventType.g() != null && !authEventType.g().equals(g())) {
            return false;
        }
        if ((authEventType.h() == null) ^ (h() == null)) {
            return false;
        }
        return authEventType.h() == null || authEventType.h().equals(h());
    }
}
